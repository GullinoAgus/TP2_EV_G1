module fetch(
input clk,
output [13:0] fetchaddr,
output [13:0] curropcodePC,
input [13:0] newFetchAddr,
input jump,
input [31:0] data,
output [31:0] opcode,
input en,
input rst
);

reg [13:0] PC = 14'b11111111111111;
wire clkin;

always @(posedge clkin, negedge rst) begin

	if (!rst) begin
		PC <= 14'b11111111111111;
	end
	else if(!jump) begin
		PC <= PC + 1;	// Salto de a uno porque la memoria de prog es de palabras de 32bits
	end
	else if(jump) begin
	// Cuidado con esto que si el jump esta muy cerca del proximo flanco de clock se puede romper. no deberia ocurrir
		PC <= newFetchAddr - 1;	// Salto de a uno porque la memoria de prog es de palabras de 32bits
	end
	
end



assign fetchaddr = PC + 1;
assign curropcodePC = PC;
assign clkin = en & clk;
assign opcode = data & en;
endmodule