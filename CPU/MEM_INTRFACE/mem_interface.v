module mem_interface(
	input [31:0] imm,
	input [31:0] r2,
	input [31:0] r1_in,
	input [14:0] op_data,
	input [31:0] data_north,
	input [31:0] data_local,
	input mem_rdy,
	input clk,
	input rst,
	
	output [31:0]r1_out,
	output reg [31:0]addr,
	output reg mem_read_local,
	output reg mem_read_north,
	output reg mem_write_local,
	output reg mem_write_north,
	output reg mem_busy
);

reg [31:0]data;

assign r1_out =  op_data[7] ? data : r1_in;

always @(posedge clk, negedge rst) begin

	

end


endmodule