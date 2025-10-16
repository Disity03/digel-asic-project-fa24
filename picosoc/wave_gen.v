module wave_gen (
	input         clk,
	input   [3:0] wstrb,
	input  [31:0] addr,
	input  [31:0] wdata,
	output [31:0] rdata,
	output reg [31:0] wave
);
	// Prametri moda
	localparam OFF    = 3'd0;
	localparam TOGGLE = 3'd1;
	localparam PWM    = 3'd2;
	localparam PRN    = 3'd3;
	localparam RECT   = 3'd4;
	localparam TRI    = 3'd5;
	localparam SAW    = 3'd6;
	localparam SINE   = 3'd7;

	// Parametri kontrole toka
	localparam MODE   = 2'b00;
	localparam PARAM1 = 2'b01;
	localparam PARAM2 = 2'b10;	
	localparam OUTP   = 2'b11;
	
	// Registar moda
	reg [2:0] mode;
	reg changed; 
	assign rdata ={29'b0, mode};
	
	// Registri signala
	reg [11:0] param1, param2;
	reg [31:0] counter;
	wire[31:0] sine_phase;
	reg        feedback;
	
	reg pp;
	wire[11:0] rom_output;
	wire[31:0] mul;
	assign mul = rom_output * param1;
	assign sine_phase = (counter << 8) / param2 ; // Mana modula, visebitsko deljenje
	
	// Instanca rom memorije za LUT sinusa
	sine_rom rom (
		.clk(clk),
		.addr(sine_phase[6:0]),
		.dout(rom_output)
	);
    
    // Konfiguracija registara
    always @(posedge clk) begin
    		if(|wstrb) begin
				case (addr[3:2])
					MODE: begin
						mode <= wdata[2:0];
						changed <= 1;
					end
					
					PARAM1: begin
						if(mode == PWM) begin
							param1 <= (wdata > 31) ? 31 : (wdata < 2) ? 12'd2 : wdata[11:0];
						end
						else param1 <= wdata[11:0];
					end
					
					PARAM2: begin
						param2 <= |wdata ? wdata[11:0] : 1;
						changed <= 0;
					end
				endcase
			end
    end

    // Osnovni generator
    always @(posedge clk) begin
        if (changed) begin
            wave <= 0;
            counter <= 0;
            pp <= 0;
        end else begin
            case(mode)
                OFF: wave <= 0; // Iskljucen

                TOGGLE: begin // Naizmenicni signal
                    if (counter == param1-1) begin
                        wave[0] <= ~wave[0];
                        counter <= 0;
                    end else counter <= counter + 1;
                end

                PWM: begin // PWM signal
                    if (wave[0] && counter == param1-1) begin
                        wave[0] <= 0;
                        counter <= 0;
                    end else if (!wave[0] && counter == param2-1) begin
                        wave[0] <= 1;
                        counter <= 0;
                    end else counter <= counter + 1;
                end

                PRN: begin // Pseudo-nasumicni signal
					feedback = ^(param2 & param1);
					param1 <= {param1[10:0], feedback};
					wave[0] <= param1[0];
                end

                RECT: begin // Pravougaoni signal
                    counter <= counter + 1;
                    wave[31:0] <= (counter < (param2>>1)) ? param1 : 0;
                    if (counter == param2-1) counter <= 0;
                end

                TRI: begin // Trouglasti signal
                    if (~pp) begin
                        counter <= counter + param2;
                        if((counter + param2) > param1) pp <= ~pp;
                    end else begin
                        counter <= counter - param2;
                        if(counter - param2 < 0) pp <= ~pp;
                    end
                    wave[31:0] <= counter;
                end

                SAW: begin // Testerasti signal
                    counter <= ((counter + param2) > param1) ? 0 : counter + param2;
                    wave[31:0] <= counter;
                end

                SINE: begin // Sinusni signal
                	if(~pp) begin
		                counter <= counter + 1;
		                if(counter >= (param2>>1)-1) pp <= ~pp;
		                wave[31:0] <= {11'b0,mul[31:11]};
		            end else begin
		            	counter <= counter - 1;
		            	if(counter <= 1) pp <= ~pp;
		            	wave[31:0] <= (param1<<1) - mul[23:11];
		            end
                end
            endcase
        end
    end
endmodule

// ROM memorija za LUT sinusa
module sine_rom (
    input  wire clk,    
    input  wire [6:0] addr,   
    output reg  [11:0] dout    
);

    reg [11:0] rom [0:127];    

    initial begin
        rom[0]   = 12'd2048;
        rom[1]   = 12'd2098;
        rom[2]   = 12'd2148;
        rom[3]   = 12'd2198;
        rom[4]   = 12'd2248;
        rom[5]   = 12'd2298;
        rom[6]   = 12'd2348;
        rom[7]   = 12'd2398;
        rom[8]   = 12'd2447;
        rom[9]   = 12'd2496;
        rom[10]  = 12'd2545;
        rom[11]  = 12'd2594;
        rom[12]  = 12'd2642;
        rom[13]  = 12'd2690;
        rom[14]  = 12'd2737;
        rom[15]  = 12'd2784;
        rom[16]  = 12'd2831;
        rom[17]  = 12'd2877;
        rom[18]  = 12'd2923;
        rom[19]  = 12'd2968;
        rom[20]  = 12'd3013;
        rom[21]  = 12'd3057;
        rom[22]  = 12'd3100;
        rom[23]  = 12'd3143;
        rom[24]  = 12'd3185;
        rom[25]  = 12'd3226;
        rom[26]  = 12'd3267;
        rom[27]  = 12'd3307;
        rom[28]  = 12'd3346;
        rom[29]  = 12'd3385;
        rom[30]  = 12'd3423;
        rom[31]  = 12'd3459;
        rom[32]  = 12'd3495;
        rom[33]  = 12'd3530;
        rom[34]  = 12'd3565;
        rom[35]  = 12'd3598;
        rom[36]  = 12'd3630;
        rom[37]  = 12'd3662;
        rom[38]  = 12'd3692;
        rom[39]  = 12'd3722;
        rom[40]  = 12'd3750;
        rom[41]  = 12'd3777;
        rom[42]  = 12'd3804;
        rom[43]  = 12'd3829;
        rom[44]  = 12'd3853;
        rom[45]  = 12'd3876;
        rom[46]  = 12'd3898;
        rom[47]  = 12'd3919;
        rom[48]  = 12'd3939;
        rom[49]  = 12'd3958;
        rom[50]  = 12'd3975;
        rom[51]  = 12'd3992;
        rom[52]  = 12'd4007;
        rom[53]  = 12'd4021;
        rom[54]  = 12'd4034;
        rom[55]  = 12'd4045;
        rom[56]  = 12'd4056;
        rom[57]  = 12'd4065;
        rom[58]  = 12'd4073;
        rom[59]  = 12'd4080;
        rom[60]  = 12'd4085;
        rom[61]  = 12'd4089;
        rom[62]  = 12'd4093;
        rom[63]  = 12'd4094;
        rom[64]  = 12'd4095;
        rom[65]  = 12'd4094;
        rom[66]  = 12'd4093;
        rom[67]  = 12'd4089;
        rom[68]  = 12'd4085;
        rom[69]  = 12'd4080;
        rom[70]  = 12'd4073;
        rom[71]  = 12'd4065;
        rom[72]  = 12'd4056;
        rom[73]  = 12'd4045;
        rom[74]  = 12'd4034;
        rom[75]  = 12'd4021;
        rom[76]  = 12'd4007;
        rom[77]  = 12'd3992;
        rom[78]  = 12'd3975;
        rom[79]  = 12'd3958;
        rom[80]  = 12'd3939;
        rom[81]  = 12'd3919;
        rom[82]  = 12'd3898;
        rom[83]  = 12'd3876;
        rom[84]  = 12'd3853;
        rom[85]  = 12'd3829;
        rom[86]  = 12'd3804;
        rom[87]  = 12'd3777;
        rom[88]  = 12'd3750;
        rom[89]  = 12'd3722;
        rom[90]  = 12'd3692;
        rom[91]  = 12'd3662;
        rom[92]  = 12'd3630;
        rom[93]  = 12'd3598;
        rom[94]  = 12'd3565;
        rom[95]  = 12'd3530;
        rom[96]  = 12'd3495;
        rom[97]  = 12'd3459;
        rom[98]  = 12'd3423;
        rom[99]  = 12'd3385;
        rom[100] = 12'd3346;
        rom[101] = 12'd3307;
        rom[102] = 12'd3267;
        rom[103] = 12'd3226;
        rom[104] = 12'd3185;
        rom[105] = 12'd3143;
        rom[106] = 12'd3100;
        rom[107] = 12'd3057;
        rom[108] = 12'd3013;
        rom[109] = 12'd2968;
        rom[110] = 12'd2923;
        rom[111] = 12'd2877;
        rom[112] = 12'd2831;
        rom[113] = 12'd2784;
        rom[114] = 12'd2737;
        rom[115] = 12'd2690;
        rom[116] = 12'd2642;
        rom[117] = 12'd2594;
        rom[118] = 12'd2545;
        rom[119] = 12'd2496;
        rom[120] = 12'd2447;
        rom[121] = 12'd2398;
        rom[122] = 12'd2348;
        rom[123] = 12'd2298;
        rom[124] = 12'd2248;
        rom[125] = 12'd2198;
        rom[126] = 12'd2148;
        rom[127] = 12'd2098;
    end

    always @(posedge clk) begin
        dout <= (addr>127 | addr<0) ? rom[0] : rom[addr];
    end

endmodule
