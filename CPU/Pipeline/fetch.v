module fetch(
input clk,
output [0:14] fetchaddr,
input [0:14] newFetchAddr,
input jump,
input [0:31] data,
output reg [0:31] opcode,
input en,
input rst,

);

reg [0:14] PC = 0;

always @(posedge clk or negedge rst) begin

	if (!rst) begin
		PC <= 0;
	end
	else begin
		opcode <= data;
		PC <= PC + 1;
	end
	
end
// Cuidado con esto que si el jump esta muy cerca del proximo flanco de clock se puede romper. no deberia ocurrir
always @(posedge jump) begin
	
	PC <= newFetchAddr;
	opcode <= 0;
	
end

assign fetchaddr = PC;
endmodule