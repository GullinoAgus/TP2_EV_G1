module mem_interface(
	input busy,
	input read,
	input write,
	input VGA_data_needed,
	
	output wire write_enabled,
	output wire read_enabled
);

assign write_enabled = !busy && write && !VGA_data_needed;
assign read_enabled = !busy && read;

endmodule