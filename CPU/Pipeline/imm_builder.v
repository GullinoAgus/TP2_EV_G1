`define LUI 5'b01101
`define AUIPC 5'b00101
`define BTYPE 5'b11000
`define JALR 5'b11001
`define JAL 5'b11011  
`define ITYPE 5'b00100
`define IMTYPE 5'b00000
`define STYPE 5'b01000
`define RTYPE 5'b01100

module imm_builder(
	input[31:0] inst,
	output reg[31:0] imm
);

always @(*)
	begin
		case(inst[6:2])
			`LUI, `AUIPC: imm = {inst[31:12], 12'h000};
			`BTYPE: imm = {inst[31] ? 20'hFFFFF : 20'h00000 , inst[7], inst[30:25], inst[11:8], 1'b0};
			`JALR, `ITYPE, `IMTYPE: imm = {inst[31] ? 21'h1FFFFF : 21'h000000, inst[30:25], inst[24:21], inst[20]};
			`STYPE: imm = {inst[31] ? 21'h1FFFFF : 21'h000000, inst[30:25], inst[11:8], inst[7]};
			`JAL: imm = {inst[31] ? 12'hFFF : 12'h000, inst[19:12], inst[20], inst[30:25], inst[24:21], 1'b0};
			default: imm = 0;
		endcase
	end
endmodule