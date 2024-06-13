`define CPU 0;
`define VGA 1;

module north_bridge_driver(
	input clk,
	input [15:0]CPU_data,
	input [23:0]CPU_addr,
	input CPU_RW,
	input VGA_data_needed,
	input VGA_counter_rst,
	output load_VGA,
	
	output toVGA,
	output toCPU,
	output busy
);


always @(posedge clk)
	begin
		
	end
endmodule