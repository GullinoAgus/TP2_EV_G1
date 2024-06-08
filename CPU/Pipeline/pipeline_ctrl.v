module pipeline_ctrl(
input clk,
input rst,
input [14:0] op_data_Decode,
input [2:0] func3,
input BEQ,
input BNE,
input BLT,
input BGE,
input [4:0] rd_stage2,
input [4:0] r1_stageDecode,
input [4:0] r2_stageDecode,

output reg en_fetch,
output reg en_stage1,
output reg en_stage2,
output reg en_stage3,
output reg en_regs
);


always @(posedge clk, negedge rst) begin

	if (!rst) begin
		en_fetch <= 0;
		en_stage1 <= 0;
		en_stage2 <= 0;
		en_stage3 <= 0;
		en_regs <= 0;
	end
	else begin
		// rd_s2 es rs1 o rs2 a la entrada de s1 y se usa rs1 o rs2. Hay q frenar fetch,s1 y s2 1 ciclo
		if (((rd_stage2 == r1_stageDecode) && op_data_Decode[1]) || ((rd_stage2 == r2_stageDecode) && op_data_Decode[2])) begin
			en_fetch <= 0;
			en_stage1 <= 0;
			en_stage2 <= 0;
		end 
		// Branch se cumple o jump. Hay q frenar s1 en adelante 1 ciclo
		else if (op_data_Decode[4] || op_data_Decode[5]) begin
			en_stage1 <= 0;
			en_stage2 <= 0;
			en_stage3 <= 0;
		end
		// Lectura a memoria
		else if (op_data_Decode[7]) begin
			
		end
		// Escritura a memoria
		else if (op_data_Decode[8]) begin
			
		end
		else begin 
			en_fetch <= 1;
			en_stage1 <= 1;
			en_stage2 <= 1;
			en_stage3 <= 1;
			en_regs <= 1;
		end
	end
end

endmodule