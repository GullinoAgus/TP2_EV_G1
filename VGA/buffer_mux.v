module buffer_mux(
	input wire[7:0] b0,
	input wire[7:0] b1,
	input wire select,
 	output wire[7:0] out
);

assign out = select ? b1 : b0;

endmodule