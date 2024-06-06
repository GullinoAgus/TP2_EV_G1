module stage2(
input [31:0] r1,
input [31:0] r2,
input [4:0] rd,
input [31:0] imm,
input [31:0] PC,
input [10:0] op_data,
input en,
input rst,
input clk,

output reg[31:0] r1_out,
output reg[31:0] r2_out,
output reg[4:0] rd_out,
output reg[31:0] imm_out,
output reg[31:0] PC_out,
output reg[10:0] op_data_out
);

assign clk_en = clk && en;

always @(posedge clk_en, negedge rst) begin
	if (!rst) begin
		r1_out <= 0;
		r2_out <= 0;
		rd_out <= 0;
		imm_out <= 0;
		PC_out <= 0;
		op_data_out <= 0;
	end
	else begin
		r1_out <= r1;
		r2_out <= r2;
		rd_out <= rd;
		imm_out <= imm;
		PC_out <= PC;
		op_data_out <= op_data;
	end
end

endmodule