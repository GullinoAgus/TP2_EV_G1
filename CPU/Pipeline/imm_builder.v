`define UTYPE1 5'b01101
`define UTYPE2 5'b00101
`define BTYPE 5'b11000
`define ITYPE1 5'b11001
`define ITYPE2 5'b00100
`define IMTYPE 5'b00000
`define STYPE 5'b01000
`define RTYPE 5'b01100
`define JTYPE 5'b11011  

module imm_builder(
	input[31:0] inst,
	output reg[31:0] imm
);

always @(*)
	begin
		case(inst[6:2])
			`UTYPE1, `UTYPE2: imm = {inst[31:12], 8'b00000000};
			`BTYPE: imm = {20'hFFFFF && inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};
			`ITYPE1, `ITYPE2, `IMTYPE: imm = {21'h1FFFFF && inst[31], inst[30:25], inst[24:21], inst[20]};
			`STYPE: imm = {21'h1FFFFF && inst[31], inst[30:25], inst[11:8], inst[7]};
			`JTYPE: imm = {12'hFFF && inst[31], inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
		endcase
	end
endmodule