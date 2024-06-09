`define LUI 5'b01101
`define AUIPC 5'b00101
`define BTYPE 5'b11000
`define JALR 5'b11001
`define JAL 5'b11011  
`define ITYPE 5'b00100
`define IMTYPE 5'b00000
`define STYPE 5'b01000
`define RTYPE 5'b01100

module decode(

input wire [31:0] opcode,

output reg [4:0] ALU_command,
output reg [4:0] rs1,
output reg [4:0] rs2,
output reg [4:0] rd,

//ARMAR UN SOLO REGISTRO DE STATUS QUE YA JUNTE VARIOS BITS PORQUE VA A SER MUCHO MAS FACIL DE RUTEAR Y MANEJAR EN QUARTUS
//OSEA TENES UNA UNICA SALIDA DE 8 BITS Y DOCUMENTAR QUE HACE CADA UNA

output reg [14:0]op_data // bit order 0:UsesIMM, 1:UsesR1, 2:UsesR2, 3:UsesRd, 4:IsBranch, 5:IsJump, 6:IsUnsigned, 7:IsMemRead, 8:isMemStore, 9:SumImm2R1, 10:SumImm2R2, 11:SumImm2PC, 12: MemAccess1byte, 13: MemAccess2byte, 14: MemAccess4byte
);

wire[2:0]func3;
wire[6:0]func7;
wire[4:0]shamt;
wire[4:0]_rs1;
wire[4:0]_rs2;
wire[4:0]_rd;

assign func3 = opcode[14:12];
assign func7 = opcode[31:25];
assign shamt = opcode[24:20];
assign _rs1 = opcode[19:15];
assign _rs2 = opcode[24:20];
assign _rd = opcode[11:7];


always @(*) begin
	rs1 <= _rs1;
	rs2 <= _rs2;
	case(opcode[6:2])
		`LUI: begin
			op_data[0] <= 1;
			op_data[3] <= 1;
			op_data[2:1] <= 0;
			op_data[11:4] <= 0;
			ALU_command <= 5'b11111;
			rd <= _rd;
		end
			
		`AUIPC: begin
			op_data[0] <= 1;
			op_data[3] <= 1;
			op_data[11] <= 1;
			op_data[2:1] <= 0;
			op_data[10:4] <= 0;
			ALU_command <= 5'b00000;
			rd <= _rd;
		end
		
		`BTYPE: begin
			op_data[2:0] <= 1;
			op_data[4] <= 1;
			op_data[11] <= 1;
			op_data[3] <= 0;
			op_data[10:5] <= 0;
			ALU_command <= 5'b11111;
			rd <= 0;
		end
		
		`JALR: begin
			op_data[1:0] <= 1;
			op_data[2] <= 0;
			op_data[3] <= 1;
			op_data[4] <= 0;
			op_data[5] <= 1;
			op_data[11] <= 1;
			op_data[10:6] <= 0;
			ALU_command <= 5'b11111;
			rd <= _rd;
		end
		
		`JAL: begin
			op_data[0] <= 1;
			op_data[2:1] <= 0;
			op_data[3] <= 1;
			op_data[4] <= 0;
			op_data[5] <= 1;
			op_data[11] <= 1;
			op_data[10:6] <= 0;
			ALU_command <= 5'b11111;
			rd <= _rd;
		end
		
		`IMTYPE: begin
			op_data[6] <= func3[2];
			op_data[7] <= 1;
			op_data[1:0] <= 1;
			op_data[2] <= 0;
			op_data[3] <= 1;
			op_data[5:4] <= 0;
			op_data[8] <= 0;
			op_data[9] <= 1;
			op_data[11:10] <= 0;
			ALU_command <= 5'b11111;
			rd <= _rd;
			case (func3[1:0])
				2'b00: op_data[14:12] <= 3'b001;
				2'b01: op_data[14:12] <= 3'b010;
				2'b10: op_data[14:12] <= 3'b100;
			endcase
		end
		
		`STYPE: begin
			op_data[8] <= 1;
			op_data[2:0] <= 1;
			op_data[7:3] <= 0;
			op_data[9] <= 1;
			op_data[11:10] <= 0;
			ALU_command <= 5'b11111;
			rd <= 0;
			case (func3[1:0])
				2'b00: op_data[14:12] <= 3'b001;
				2'b01: op_data[14:12] <= 3'b010;
				2'b10: op_data[14:12] <= 3'b100;
			endcase
		end
		
		`ITYPE: begin
			op_data[1:0] <= 1;
			op_data[2] <= 0;
			op_data[3] <= 1;
			op_data[11:4] <= 0;
			rd <= _rd;
			if (func3 == 3'b101 || func3 == 3'b001)  ALU_command <= {func7[5:4], func3};
			else ALU_command <= {2'b00, func3};
		end
			
		`RTYPE: begin
			op_data[3:1] <= 1;
			op_data[0] <= 0;
			op_data[11:4] <= 0;
			ALU_command <= {func7[5:4], func3};
			rd <= _rd;
		end
	endcase
end
endmodule