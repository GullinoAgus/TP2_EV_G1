module pipeline_ctrl(
input clk,
input rst,
input [14:0] op_data_Decode,
input [2:0] func3,
input BEQ,
input BNE,
input BLT,
input BGE,
input mem_busy,
input [4:0] rd_stage2,
input [4:0] rd_stage1,
input [4:0] r1_stageDecode,
input [4:0] r2_stageDecode,

output reg en_fetch,
output reg en_stage1,
output rst_stage1,
output reg en_stage2,
output reg en_stage3,
output reg en_regs,
output reg en_addr_builder
);

reg [1:0]skipBranch;
reg skipJump;
reg skipDepend;
reg [1:0]skipRead;
reg skipWrite;

assign rst_stage1 = !(skipWrite || skipRead) && !(((((rd_stage2 == r1_stageDecode) && op_data_Decode[1]) || ((rd_stage2 == r2_stageDecode) && op_data_Decode[2]) ) && (rd_stage2 != 0) )||((((rd_stage1 == r1_stageDecode) && op_data_Decode[1]) || ((rd_stage1 == r2_stageDecode) && op_data_Decode[2]) ) && (rd_stage1 != 0)));

always @(posedge clk, negedge rst) begin

	if (!rst) begin
		en_fetch <= 0;
		en_stage1 <= 0;
		en_stage2 <= 0;
		en_stage3 <= 0;
		en_regs <= 0;
		skipBranch <= 0;
		skipJump <= 0;
		skipDepend <= 0;
		en_addr_builder <= 0;
	end
	else begin
		
		// rd_s2 es rs1 o rs2 a la entrada de s1 y se usa rs1 o rs2. Hay q frenar fetch,s1 y s2 1 ciclo
		if (skipDepend) begin
			skipDepend <= 0;
			en_addr_builder <= 1;
		end
		else if ((((rd_stage2 == r1_stageDecode) && op_data_Decode[1]) || ((rd_stage2 == r2_stageDecode) && op_data_Decode[2]) ) && (rd_stage2 != 0)) begin
			en_stage1 <= 1;
			skipDepend <= 1;
			en_stage2 <= 1;
			en_stage3 <= 1;
			en_addr_builder <= 1;
		end 
		else if ((((rd_stage1 == r1_stageDecode) && op_data_Decode[1]) || ((rd_stage1 == r2_stageDecode) && op_data_Decode[2]) ) && (rd_stage1 != 0)) begin
			en_stage1 <= 1;
			en_stage2 <= 1;
			en_stage3 <= 1;
			en_addr_builder <= 1;
		end 
		
		
		// jump. Hay q frenar s1 en adelante 2 ciclo
		if (skipJump) begin
			en_addr_builder <= 0;
			skipJump <= 0;
		end
		else if (op_data_Decode[5]) begin
			en_stage1 <= 0;
			en_stage2 <= 0;
			en_stage3 <= 0;
			skipJump <= 1;
		end
		
		
		// Branch se cumple. Hay q frenar s1 en adelante 2 ciclo
		if (skipBranch) begin
			if (BEQ || BNE || BLT || BGE) begin
				en_stage1 <= 0;
				en_stage2 <= 0;
				en_stage3 <= 0;
				en_addr_builder <= 0;
				skipBranch <= 0;	
			end
			else begin
				skipBranch <= 0;
			end
		end
		else if (op_data_Decode[4]) begin
			skipBranch <= 1;
			en_fetch <= 1;
			en_stage1 <= 1;
			en_stage2 <= 1;
			en_stage3 <= 1;
			en_regs <= 1;
			en_addr_builder <= 1;
		end
		
		// Lectura a memoria
		if (skipRead == 2 && !mem_busy) begin
			skipRead <= 0;
		end
		else if (skipRead == 1) begin
			skipRead <= skipRead + 1;
		end
		else if (op_data_Decode[7]) begin
			skipRead <= 1;
			en_fetch <= 1;
			en_stage1 <= 0;
			en_stage2 <= 0;
			en_stage3 <= 0;
			en_regs <= 1;
			en_addr_builder <= 1;
		end
		
		
		// Escritura a memoria
		//else if (op_data_Decode[8]) begin
			
		//end
	end
end


endmodule