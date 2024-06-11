module fetch(
input clk,
output [13:0] fetchaddr,
output [31:0] curropcodePC,
input [31:0] newFetchAddr,
input jump,
input [31:0] data,
output [31:0] opcode,
input en,
input stop,
input rst
);

reg [13:0] PC = 14'b11111111111111;
wire clkin;

always @(posedge clkin, negedge rst) begin

	if (!rst) begin
		PC <= 14'b11111111111111;
	end
	else if(!jump) begin
		PC = PC + (1 && stop);
	end
	else if(jump) begin
		PC <= newFetchAddr[13:0];
	end
	
end

assign fetchaddr = PC;
assign curropcodePC = {16'h0000, PC};
assign clkin = en & clk;
assign opcode = data;
endmodule