module wave_gen (
	input         resetn,
	input         clk,
	input   [2:0] mode,
	input  [31:0] param1,
	input  [31:0] param2,
	output reg [31:0] wave
);

	localparam OFF    = 3'd0;
	localparam TOGGLE = 3'd1;
	localparam PWM    = 3'd2;
	localparam PRN    = 3'd3;
	localparam RECT   = 3'd4;
	localparam TRI    = 3'd5;
	localparam SAW    = 3'd6;
	localparam SINE   = 3'd7;


    reg [2:0] mode_reg;

    // Toggle/PWM/PRN регистри
    reg [31:0] toggle_len, pwm_high, pwm_low, w, prn_mask;
    reg [31:0] counter;
    reg [31:0] lfsr;

    // Вишебитни сигнали
    reg [31:0] rect_amp, rect_period;
    reg [31:0] tri_amp, tri_step, saw_amp, saw_step;
    reg [31:0] sine_amp, sine_period;
    reg [31:0] multi_cnt; // општи бројач за више-битне сигнале

	
	
    // Конфигурација регистара
    always @(posedge clk) begin
        if (resetn) begin
            mode_reg <= mode;
            case(mode)
                TOGGLE: begin
                	toggle_len <= param1;
                end 
                PWM: begin
                	pwm_high <= param1;
                	pwm_low <= param2;
                end
                PRN: begin
                	if (param1 > 31) begin
                		w <= 31;
                	end else if (param1 < 2) begin
                		w <= 2;
                	end
                	prn_mask <= param2;
                end
                RECT : begin
                	rect_amp <= param1;
                	rect_period <= param2;
                end
                TRI : begin
                	tri_amp <= param1;
                	tri_step <= param2;
                end
                SAW : begin
                	saw_amp <= param1;
                	saw_step <= param2;
                end
                SINE : begin
                	sine_amp <= param1;
                	sine_period <= param2;
                end
            endcase
        end
    end

    // Основни генератор
    always @(posedge clk or negedge resetn) begin
        if (!resetn) begin
            wave <= 0;
            counter <= 0;
            lfsr <= 32'hACE1;
            multi_cnt <= 0;
        end else begin
            case(mode_reg)
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
