module or_funct
(
	input[31:0] op1,
	input[31:0] op2,
	output[31:0] result	
);

assign result = op1 | op2;
 	
endmodule 