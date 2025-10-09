module wave_gen (
	input         clk,
	input   [3:0] wstrb,
	input  [31:0] addr,
	input  [31:0] wdata,
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
	reg [2:0] prev_wdata;
	reg changed; 
	    
	// Jednobitni signali
	reg [31:0] toggle_len, pwm_high, pwm_low, w, prn_mask;
	reg [31:0] counter;
	reg [31:0] lfsr;

	// Visebitni signali
	reg [31:0] rect_amp, rect_period;
	reg [31:0] tri_amp, tri_step, saw_amp, saw_step;
	reg [31:0] sine_amp, sine_period;
	reg [31:0] multi_cnt;

	
	always @(posedge clk) begin
        prev_wdata <= wdata;
        changed <= (wdata != prev_wdata) && |wstrb;
    end
    
    // Konfiguracija registara
    always @(posedge clk) begin
    		if(|wstrb) begin
				case (addr[3:2]) begin
					MODE: mode <= wdata[2:0];
					
					PARAM1: begin
						case (mode) begin
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
						case (mode) begin
						    PWM: pwm_low <= wdata;
						    PRN: prn_mask <= wdata;
						    RECT : rect_period <= wdata;
						    TRI : tri_step <= wdata;
						    SAW : saw_step <= wdata;
						    SINE : sine_period <= wdata;
						endcase
					end
				endcase
			end
        end
    end

    // Osnovni generator
    always @(posedge clk) begin
        if (changed) begin
            wave <= 0;
            counter <= 0;
            lfsr <= 32'hACE1;
            multi_cnt <= 0;
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
                    lfsr[w-1:0] <= {lfsr[w-2:0], ^(lfsr[w-1:0] & prn_mask[w-1:0])};
                    wave[0] <= lfsr[w-1];
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
                    multi_cnt <= multi_cnt + 1;
                    wave[31:0] <= sine_amp * $sin(2*3.141592*multi_cnt/sine_period);
                end
            endcase
        end
    end
