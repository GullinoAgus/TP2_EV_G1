`define CPU 0;
`define VGA 1;

module north_bridge_driver(
	input clk,
	input CPU_data[15:0],
	input CPU_addr[23:0],
	input CPU_RW,
	input VGA_data_needed,
	input VGA_counter_rst,
	output load_VGA,
	
	output toVGA,
	output toCPU,
	output busy,
	
	
);


always @(posedge clk)
	begin
		
	end
endmodule