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
	
	// Jednobitni signali
	reg [31:0] toggle_len, pwm_high, pwm_low, w, prn_mask;
	reg [31:0] counter;
	reg [31:0] lfsr;

	// Visebitni signali
	reg [31:0] rect_amp, rect_period;
	reg [31:0] tri_amp, tri_step, saw_amp, saw_step;
	reg [31:0] sine_amp, sine_period;
	wire[31:0] sine_phase;
	reg [31:0] multi_cnt;
	reg [31:0] mask_lower;
	reg        feedback;
	
	reg pp;
	wire[11:0] rom_output;
	assign sine_phase = multi_cnt * 255 / (sine_period) ;
	sine_rom rom (
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
						case (mode)
							TOGGLE: toggle_len <= wdata;
						    PWM: pwm_high <= wdata;
						    PRN: w <= (wdata > 31) ? 31 : (wdata < 2) ? 2 : wdata;
						    RECT : rect_amp <= wdata;
						    TRI : tri_amp <= wdata;
						    SAW : saw_amp <= wdata;
						    SINE : sine_amp <= wdata;
						endcase
					end
					
					PARAM2: begin
						case (mode)
						    PWM: pwm_low <= wdata;
						    PRN: prn_mask <= wdata;
						    RECT : rect_period <= wdata;
						    TRI : tri_step <= wdata;
						    SAW : saw_step <= wdata;
						    SINE : sine_period <= |wdata ? wdata : 1;
						endcase
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
            lfsr <= 32'hACE1;
            multi_cnt <= 0;
            pp <= 0;
        end else begin
            case(mode)
                OFF: wave <= 0;

                TOGGLE: begin
                    if (counter == toggle_len-1) begin
                        wave[0] <= ~wave[0];
                        counter <= 0;
                    end else counter <= counter + 1;
                end

                PWM: begin
                    if (wave[0] && counter == pwm_high-1) begin
                        wave[0] <= 0;
                        counter <= 0;
                    end else if (!wave[0] && counter == pwm_low-1) begin
                        wave[0] <= 1;
                        counter <= 0;
                    end else counter <= counter + 1;
                end

                PRN: begin
					mask_lower = 32'hFFFF_FFFF >> (32 - w);
					feedback = ^((lfsr & mask_lower) & (prn_mask & mask_lower));
					lfsr <= ((lfsr << 1) | feedback) & mask_lower;
					wave[0] <= (lfsr >> (w-1)) & 1'b1;
                end

                RECT: begin
                    multi_cnt <= multi_cnt + 1;
                    wave[31:0] <= (multi_cnt < rect_period/2) ? rect_amp : 0;
                    if (multi_cnt == rect_period-1) multi_cnt <= 0;
                end

                TRI: begin
                    multi_cnt <= multi_cnt + 1;
                    if (multi_cnt < (tri_amp/tri_step)) 
                        wave[31:0] <= multi_cnt * tri_step;
                    else
                        wave[31:0] <= tri_amp - ((multi_cnt-(tri_amp/tri_step))*tri_step);
                    if (multi_cnt == 2*(tri_amp/tri_step)-1) multi_cnt <= 0;
                end

                SAW: begin
                    multi_cnt <= multi_cnt + 1;
                    wave[31:0] <= (multi_cnt * saw_step) % saw_amp;
                end

                SINE: begin
                	if(~pp) begin
		                multi_cnt <= multi_cnt + 1;
		                if(multi_cnt >= (sine_period/2)-1) pp <= ~pp;
		                wave[31:0] <= (rom_output * sine_amp) / 2048;
		            end else begin
		            	multi_cnt <= multi_cnt - 1;
		            	if(multi_cnt <= 1) pp <= ~pp;
		            	wave[31:0] <= (2*sine_amp) - (rom_output * sine_amp) / 2048;
		            end
                end
            endcase
        end
    end
endmodule


module sine_rom (
    input  wire [6:0] addr,
    output reg  [11:0] dout
);

    always @(*) begin
        case (addr)
            7'd0: dout = 12'd2048;
            7'd1: dout = 12'd2098;
            7'd2: dout = 12'd2148;
            7'd3: dout = 12'd2198;
            7'd4: dout = 12'd2248;
            7'd5: dout = 12'd2298;
            7'd6: dout = 12'd2348;
            7'd7: dout = 12'd2398;
            7'd8: dout = 12'd2447;
            7'd9: dout = 12'd2496;
            7'd10: dout = 12'd2545;
            7'd11: dout = 12'd2594;
            7'd12: dout = 12'd2642;
            7'd13: dout = 12'd2690;
            7'd14: dout = 12'd2737;
            7'd15: dout = 12'd2784;
            7'd16: dout = 12'd2831;
            7'd17: dout = 12'd2877;
            7'd18: dout = 12'd2923;
            7'd19: dout = 12'd2968;
            7'd20: dout = 12'd3013;
            7'd21: dout = 12'd3057;
            7'd22: dout = 12'd3100;
            7'd23: dout = 12'd3143;
            7'd24: dout = 12'd3185;
            7'd25: dout = 12'd3226;
            7'd26: dout = 12'd3267;
            7'd27: dout = 12'd3307;
            7'd28: dout = 12'd3346;
            7'd29: dout = 12'd3385;
            7'd30: dout = 12'd3423;
            7'd31: dout = 12'd3459;
            7'd32: dout = 12'd3495;
            7'd33: dout = 12'd3530;
            7'd34: dout = 12'd3565;
            7'd35: dout = 12'd3598;
            7'd36: dout = 12'd3630;
            7'd37: dout = 12'd3662;
            7'd38: dout = 12'd3692;
            7'd39: dout = 12'd3722;
            7'd40: dout = 12'd3750;
            7'd41: dout = 12'd3777;
            7'd42: dout = 12'd3804;
            7'd43: dout = 12'd3829;
            7'd44: dout = 12'd3853;
            7'd45: dout = 12'd3876;
            7'd46: dout = 12'd3898;
            7'd47: dout = 12'd3919;
            7'd48: dout = 12'd3939;
            7'd49: dout = 12'd3958;
            7'd50: dout = 12'd3975;
            7'd51: dout = 12'd3992;
            7'd52: dout = 12'd4007;
            7'd53: dout = 12'd4021;
            7'd54: dout = 12'd4034;
            7'd55: dout = 12'd4045;
            7'd56: dout = 12'd4056;
            7'd57: dout = 12'd4065;
            7'd58: dout = 12'd4073;
            7'd59: dout = 12'd4080;
            7'd60: dout = 12'd4085;
            7'd61: dout = 12'd4089;
            7'd62: dout = 12'd4093;
            7'd63: dout = 12'd4094;
            7'd64: dout = 12'd4095;
            7'd65: dout = 12'd4094;
            7'd66: dout = 12'd4093;
            7'd67: dout = 12'd4089;
            7'd68: dout = 12'd4085;
            7'd69: dout = 12'd4080;
            7'd70: dout = 12'd4073;
            7'd71: dout = 12'd4065;
            7'd72: dout = 12'd4056;
            7'd73: dout = 12'd4045;
            7'd74: dout = 12'd4034;
            7'd75: dout = 12'd4021;
            7'd76: dout = 12'd4007;
            7'd77: dout = 12'd3992;
            7'd78: dout = 12'd3975;
            7'd79: dout = 12'd3958;
            7'd80: dout = 12'd3939;
            7'd81: dout = 12'd3919;
            7'd82: dout = 12'd3898;
            7'd83: dout = 12'd3876;
            7'd84: dout = 12'd3853;
            7'd85: dout = 12'd3829;
            7'd86: dout = 12'd3804;
            7'd87: dout = 12'd3777;
            7'd88: dout = 12'd3750;
            7'd89: dout = 12'd3722;
            7'd90: dout = 12'd3692;
            7'd91: dout = 12'd3662;
            7'd92: dout = 12'd3630;
            7'd93: dout = 12'd3598;
            7'd94: dout = 12'd3565;
            7'd95: dout = 12'd3530;
            7'd96: dout = 12'd3495;
            7'd97: dout = 12'd3459;
            7'd98: dout = 12'd3423;
            7'd99: dout = 12'd3385;
            7'd100: dout = 12'd3346;
            7'd101: dout = 12'd3307;
            7'd102: dout = 12'd3267;
            7'd103: dout = 12'd3226;
            7'd104: dout = 12'd3185;
            7'd105: dout = 12'd3143;
            7'd106: dout = 12'd3100;
            7'd107: dout = 12'd3057;
            7'd108: dout = 12'd3013;
            7'd109: dout = 12'd2968;
            7'd110: dout = 12'd2923;
            7'd111: dout = 12'd2877;
            7'd112: dout = 12'd2831;
            7'd113: dout = 12'd2784;
            7'd114: dout = 12'd2737;
            7'd115: dout = 12'd2690;
            7'd116: dout = 12'd2642;
            7'd117: dout = 12'd2594;
            7'd118: dout = 12'd2545;
            7'd119: dout = 12'd2496;
            7'd120: dout = 12'd2447;
            7'd121: dout = 12'd2398;
            7'd122: dout = 12'd2348;
            7'd123: dout = 12'd2298;
            7'd124: dout = 12'd2248;
            7'd125: dout = 12'd2198;
            7'd126: dout = 12'd2148;
            7'd127: dout = 12'd2098;
            7'd128: dout = 12'd2048;
            default: dout = 12'd2048;
        endcase
    end
endmodule
