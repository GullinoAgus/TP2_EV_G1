module alu(
	input clk,
	input funct3,
	input funct7,
	input rs1,
	input rs2,
	input opcode,
	input imm,
	output out,
);

always @(posedge clk) 
	begin
		if (!rst)
			begin
				funt3 <= 32'b0;
				funt7 <= 32'b0;
			end
	end

assign out = res;

endmodule