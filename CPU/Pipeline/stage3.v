module stage3(
input [4:0] rd,
input [31:0] res,
input en,
input rst,
input clk,


output reg[4:0] rd_out,
output reg[31:0] res_out
);

assign clk_en = clk && en;

always @(posedge clk_en, negedge rst) begin
	if (!rst) begin
		res_out <= 0;
		rd_out <= 0;
	end
	else begin
		res_out <= res;
		rd_out <= rd;
	end
end

endmodule