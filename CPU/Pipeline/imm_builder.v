`define UTYPE 0
`define BTYPE 1
`define ITYPE 2
`define IMTYPE 3
`define STYPE 4
`define MTYPE 5
`define RTYPE 6
`define JTYPE 7  

module imm_builder(
	input[31:0] inst,
	output reg[31:0] imm
);

always @(*):
	begin
		case(inst)
			UTYPE: imm = {inst[31], inst[30:20], inst[19:12], 8'b0};
			BTYPE: imm = {20'b0, inst[7], inst[30:25], inst[11:8], 1'b0};
			ITYPE: imm = {21'b0, inst[30:25], inst[24:21], inst[20]};
			STYPE: imm = {21'b0, inst[30:25], inst[11:8], inst[7]};
			JTYPE: imm = {12'b0, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
	end 
endmodule