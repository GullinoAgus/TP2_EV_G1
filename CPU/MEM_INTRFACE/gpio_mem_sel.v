module gpio_mem_sel(
	input [31:0]addr,
	
	input mem_write_local,
	output [31:0] data_local,
	
	output mem_write_gpio,
	input [31:0] data_gpio,
	
	output mem_write_mem,
	input [31:0] data_mem
);

assign data_local = addr[15] ? data_gpio : data_mem;
assign mem_write_mem = mem_write_local && !addr[15];
assign mem_write_gpio = mem_write_local && addr[15];

endmodule