/*
 *  PicoSoC - A simple example SoC using PicoRV32
 *
 *  Copyright (C) 2017  Claire Xenia Wolf <claire@yosyshq.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */

`timescale 1 ns / 1 ps

module testbench;
	reg clk;
	always #5 clk = (clk === 1'b0);

	localparam ser_half_period = 53;
	event ser_sample;

	initial begin
		$dumpfile("testbench.vcd");
		$dumpvars(0, testbench);

		repeat (15) begin
			repeat (50000) @(posedge clk);
			$display("+50000 cycles");
		end
		$finish;
	end

	integer cycle_cnt = 0;

	always @(posedge clk) begin
		cycle_cnt <= cycle_cnt + 1;
	end

	wire led1, led2, led3, led4, led5;
	wire ledr_n, ledg_n;
	
	wire [31:0] wave;
	wire [2:0] mode;

	wire [6:0] leds = {!ledg_n, !ledr_n, led5, led4, led3, led2, led1};

	wire ser_rx;
	wire ser_tx;

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;
	wire flash_io2;
	wire flash_io3;

	always @(leds) begin
		#1 $display("%b", leds);
	end
	
	// Registri za snimanje ispisa
	integer wave_fd;
	integer samples_per_mode;
	reg [2:0] current_mode;
	reg [2:0] prev_mode;
	reg [31:0] mode_sample_count;
	reg mode_changed;
	reg [1023:0] current_filename;
	integer startup_delay;
	reg [31:0] delay_counter;
	reg sampling_enabled;

	initial begin
		samples_per_mode = 200;
		startup_delay = 1582;
		current_mode = 0;
		prev_mode = 0;
		mode_sample_count = 0;
		mode_changed = 0;
		wave_fd = 0;
		delay_counter = 0;
		sampling_enabled = 0;
	end

	// Detekcija promene moda i snimanje
	always @(posedge clk) begin
		current_mode = mode;
		mode_changed = (current_mode != prev_mode);
		prev_mode = current_mode;
		
		// Detekcija promene moda
		if (mode_changed) begin
			if (wave_fd != 0) begin
				$fclose(wave_fd);
				$display("File closed.");
			end
			
			case (current_mode)
				3'd0: current_filename = "waves/wave_off.txt";
				3'd1: current_filename = "waves/wave_toggle.txt";
				3'd2: current_filename = "waves/wave_pwm.txt";
				3'd3: current_filename = "waves/wave_prn.txt";
				3'd4: current_filename = "waves/wave_rect.txt";
				3'd5: current_filename = "waves/wave_tri.txt";
				3'd6: current_filename = "waves/wave_saw.txt";
				3'd7: current_filename = "waves/wave_sine.txt";
				default: current_filename = "waves/wave_unknown.txt";
			endcase
			
			$display("Trying to open file: '%s'", current_filename);
			wave_fd = $fopen(current_filename, "w");
			if (wave_fd == 0) $fatal(1, "Cannot open wavefile: %s", current_filename);
			mode_sample_count = 0;
			delay_counter = 0;
			sampling_enabled = 0;
		end
		
		// Delay
		if (mode_changed || delay_counter > 0) begin
			if (delay_counter < startup_delay) begin
				delay_counter = delay_counter + 1;
				sampling_enabled = 0;
			end else begin
				sampling_enabled = 1;
			end
		end
		
		// Snimanje
		if (wave_fd != 0 && sampling_enabled && mode_sample_count < samples_per_mode) begin
			$fdisplay(wave_fd, "%d", wave);
			mode_sample_count = mode_sample_count + 1;
		end else if (mode_sample_count >= samples_per_mode && wave_fd != 0) begin
			$fclose(wave_fd);
			$display("File closed.");
			wave_fd = 0;
			sampling_enabled = 0;
		end
	end

	digel_soc #(
		// We limit the amount of memory in simulation
		// in order to avoid reduce simulation time
		// required for intialization of RAM
		.MEM_WORDS(256)
	) uut (
		.clk      (clk      ),
		.led1     (led1     ),
		.led2     (led2     ),
		.led3     (led3     ),
		.led4     (led4     ),
		.led5     (led5     ),
		.wave	  (wave     ),
		.mode     (mode     ),
		.ledr_n   (ledr_n   ),
		.ledg_n   (ledg_n   ),
		.ser_rx   (ser_rx   ),
		.ser_tx   (ser_tx   ),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.flash_io2(flash_io2),
		.flash_io3(flash_io3)
	);

	spiflash spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(flash_io2),
		.io3(flash_io3)
	);

	reg [7:0] buffer;

	always begin
		@(negedge ser_tx);

		repeat (ser_half_period) @(posedge clk);
		-> ser_sample; // start bit

		repeat (8) begin
			repeat (ser_half_period) @(posedge clk);
			repeat (ser_half_period) @(posedge clk);
			buffer = {ser_tx, buffer[7:1]};
			-> ser_sample; // data bit
		end

		repeat (ser_half_period) @(posedge clk);
		repeat (ser_half_period) @(posedge clk);
		-> ser_sample; // stop bit

		if (buffer < 32 || buffer >= 127)
			$display("Serial data: %d", buffer);
		else
			$display("Serial data: '%c'", buffer);
	end
endmodule
