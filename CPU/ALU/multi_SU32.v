module multi_SU32
(
	input[31:0] rs1, 			//signed input
	input[31:0] rs2, 			//unsigned input
	output wire[31:0] res
);

wire[63:0] product;
wire[63:0] extended_rs1;
wire[63:0] extended_rs2;

//64 bits extension
assign extended_rs1 = {{32{rs1[31]}}, rs1};
assign extended_rs2 = {{32{1'b0}}, rs2};

//Perform multiplication
assign product = extended_rs1 * extended_rs2;
assign res = product[63:32];

endmodule

/*
module multi_SU32
(
	input[31:0] rs1, 			//signed input
	input[31:0] rs2, 			//unsigned input
	output wire[31:0] res,
	output wire[31:0] extop1
);

reg[31:0] rs1_u;
reg[63:0] product;
wire[63:0] temp_product;

always @(rs1)
	begin
		if(rs1[31] == 1)
			rs1_u = -rs1;
		else
			rs1_u = rs1;
	end

lpm_mult #( .lpm_widtha(32), .lpm_widthb(32), .lpm_widthp(64), .lpm_representation("UNSIGNED")) multiplier(
	  .dataa(rs1_u),
	  .datab(rs2),
	  .result(temp_product)
);

always @(temp_product)
	begin
		if(rs1[31] == 1)
			product = -temp_product;
		else
			product = temp_product;
	end
	
assign res = product[63:32];
assign extop1 = product[31:0];
	
endmodule
*/