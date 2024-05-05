/*
Para la seleccion de la operacion, se observo la cartilla del manual. Se determino que
para crear el arbol, se requieren 5 bits:

	-> bit 5 del campo funct7
	-> bit 0 del campo funct7
	-> los 3 bit de funct3	
*/

//arithmetic
`define ADD 5'b00000 //0
`define SUB 5'b10000 //16	
`define MUL 5'b01000	//8	
`define MULH 5'b01001 //9
`define MULHU 5'b01010 //10
`define MULHSU 5'b01011 //11
`define DIV 5'b01100		//12
`define DIVU 5'b01101	//13	
`define REM 5'b01110		//14
`define REMU 5'b01111	//15

//comparisons
`define SLT 5'b00010		//2
`define SLTU 5'b00011	//3

//logicals
`define XOR 5'b00100		//4
`define OR 5'b00110		//6
`define AND 5'b00111		//7

//shifts 	
`define SLL 5'b00001		//1
`define SRL 5'b00101		//5
`define SRA 5'b10101		//21

module op_selector
(
	input[4:0] operation,
	output reg[4:0] selected	
);

endmodule