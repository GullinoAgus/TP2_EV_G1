module demux(
    input wire input_data,
    input wire select,
    output wire out_1,
	 output wire out_2
);


assign out_1 = input_data && !select;
assign out_2 = input_data && select;

endmodule