module addr_builder(
input [31:0] r1,
input [31:0] r2,
input [31:0] imm,
input [31:0] PC,
input [14:0] op_data,
input [2:0] func3,
input rst,
input en,


output load,
output reg[31:0] PC_out,
output reg NE,
output reg EQ,
output reg LT,
output reg GE
);


reg _load;

always @(*) begin
	if (!rst) begin
		PC_out <= 0;
		_load <= 0;
		NE <= 0;
		EQ <= 0;
		LT <= 0;
		GE <= 0;
	end
	else begin
		if(op_data[5]) begin
			if(op_data[1]) PC_out <= r1 + imm;
			else PC_out <= PC + imm;
			_load <= 1;
		end 
		else if(op_data[4]) begin
			PC_out <= PC + imm;
			case (func3)
				3'b000: begin
					_load <= ((r1 == r2) ? 1 : 0);
					EQ <= (r1 == r2) ? 1 : 0;
				end
				3'b001: begin
					_load <= ((r1 != r2) ? 1 : 0);
					NE <= (r1 != r2) ? 1 : 0;
				end
				3'b100: begin
					_load <= (($signed(r1) < $signed(r2)) ? 1 : 0);
					LT <= ($signed(r1) < $signed(r2)) ? 1 : 0;
				end
				3'b101: begin
					_load <= (($signed(r1) >= $signed(r2)) ? 1 : 0);
					GE <= ($signed(r1) >= $signed(r2)) ? 1 : 0;
				end
				3'b110: begin
					_load <= ((r1 < r2) ? 1 : 0);
					LT <= (r1 < r2) ? 1 : 0;
				end
				3'b111: begin
					_load <= ((r1 >= r2) ? 1 : 0);
					GE <= (r1 >= r2) ? 1 : 0;
				end
				default: begin
					_load <= 0;
					LT <= 0;
					GE <= 0;
					EQ <= 0;
					NE <= 0;
					PC_out <= 0;
				end
			endcase
		end
		else begin
		_load <= 0;
		LT <= 0;
		GE <= 0;
		EQ <= 0;
		NE <= 0;
		end
	end
end

assign load = _load && en;

endmodule