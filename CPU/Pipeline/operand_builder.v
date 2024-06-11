module operand_builder(
input [14:0]op_data,
input [31:0] PC,
input [31:0] r1,
input [31:0] r2,
input [31:0] imm,

output reg[31:0]operand1,
output reg[31:0]operand2

);

always @(*) begin
	
	if(op_data[5]) begin
		operand1 <= PC;
		operand2 <= 4;
	end
	else if(op_data[0] && op_data[1]) begin
		operand1 <= r1;
		operand2 <= imm;
	end
	else if(op_data[0]) begin
		operand1 <= imm;
		operand2 <= 0;
	end
	else begin
		operand1 <= r1;
		operand2 <= r2;
	end
	
	
end


endmodule