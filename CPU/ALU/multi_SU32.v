module multi_SU32
(
	input[31:0] rs1, 			//signed input
	input[31:0] rs2, 			//unsigned input
	output wire[31:0] res,
	output wire[31:0] extop1
);

reg[63:0] product;
reg[63:0] temp_product;
reg[63:0] extended_rs1;
reg[63:0] extended_rs2;
reg sign;

always @(*)
	begin
	
		sign = rs1[31];
	
		//64 bits extension
		if(sign == 1)
			extended_rs1 = {{32{1'b0}}, -rs1};
		else
			extended_rs1 = {{32{1'b0}}, rs1};
		extended_rs2 = {{32{1'b0}}, rs2};
	
		// Perform multiplication
		temp_product = extended_rs1 * extended_rs2;
	
		if(sign == 1)
			product = -temp_product;
		else
			product = temp_product;
	end

assign res = product[63:32];
assign extop1 = product[31:0];
	
endmodule