`define UTYPE1 5'b01101
`define UTYPE2 5'b00101
`define BTYPE 5'b11000
`define ITYPE1 5'b11001
`define ITYPE2 5'b00100
`define IMTYPE 5'b00000
`define STYPE 5'b01000
`define RTYPE 5'b01100
`define JTYPE 5'b11011  

module decode(

input [31:0] opcode,
input clk,
input rst,
input en,

output reg [4:0] ALU_command,
output reg [4:0] rs1,
output reg [4:0] rs2,
output reg [4:0] rd,

//ARMAR UN SOLO REGISTRO DE STATUS QUE YA JUNTE VARIOS BITS PORQUE VA A SER MUCHO MAS FACIL DE RUTEAR Y MANEJAR EN QUARTUS
//OSEA TENES UNA UNICA SALIDA DE 8 BITS Y DOCUMENTAR QUE HACE CADA UNA

output reg operand, 		//Hace falta alguna manera de indicar cuales son los operandos
								//Mi propuesta es hacerlo con 1 bit. 
								//Si está en 0, es rs1-rs2. Si está en 1, es rs1-imm.
								//Esto podría leerlo el register bank, seguro que si el operand build
									
output reg isJump,		//1 si la instrucción es de salto. 0 si la instrucción es de branch

output reg isLoad,		//1 si la instrucción es de load. 0 si la instrucción es de store


output reg [2:0] inst_type	//bit 0 -> memory type instruction (load/store)
									//bit 1 -> ALU type instruction (load/store)
									//bit 2 -> PC Address type instruction (load/store)
);


assign clken = clk && en;
assign func3 = opcode[12:14];
assign func7 = opcode[25:31];
assign shamt = opcode[20:24];
assign _rs1 = opcode[15:19];
assign _rs2 = opcode[20:24];
assign _rd = opcode[7:11];


always @(posedge clken, negedge rst) begin

	if (!rst) begin
	
	end
	else begin
	
	
	if (opcode[0]!=1 || opcode[1]!=1) begin
		//error ¿que hacemo?
	end
	else
		rs1 <= _rs1;
		rd <= _rd;
		rs2 <= _rs2;
		case(opcode[6:2])
			`RTYPE: begin	//Todos los opcodes, 0110011
				ALU_command <= {opcode[30], opcode[25], opcode[14:12]};
				operand <= 0;
			end
			
			`ITYPE_ALU: begin	//Todos los opcodes, 0010011
				if (opcode[14:12] == 3'b001 || opcode[14:12] == 3'b101) begin
					ALU_command = {opcode[30], opcode[25], opcode[14:12]};
					operand = 1;
					end
				else begin
					ALU_command = {2'b0, opcode[14:12]};
					operand = 1;
					end
			end
			
			`ITYPE_LOAD: begin	//Todos los opcodes, 0000011
				ALU_command = 5'b0; //ADD imm-rs1 -> despues eso lo buscas en la memoria
				operand = 1;
				isLoad = 1;
			end
		endcase

	
	end
	
			
end

	assign clkIn = clk & en;
	
endmodule