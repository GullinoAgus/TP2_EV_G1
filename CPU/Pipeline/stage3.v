module stage3(
input [4:0] rd,
input [31:0] res,
input [31:0] PC,
input [10:0] op_data,
input en,
input rst,
input clk,


output reg[4:0] rd_out,
output reg[31:0] res_out,
output reg[31:0] PC_out,
output reg[10:0] op_data_out
);

assign clk_en = clk && en;

always @(posedge clk_en, negedge rst) begin
	if (!rst) begin
		res_out <= 0;
		rd_out <= 0;
		PC_out <= 0;
		op_data_out <= 0;
	end
	else begin
		res_out <= res;
		rd_out <= rd;
		PC_out <= PC;
		op_data_out <= op_data;
	end
end

endmodule