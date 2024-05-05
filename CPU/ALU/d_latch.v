module d_latch #(parameter BSIZE = 32)
(
	input[BSIZE-1:0] d,
	input en,
	input rst,
	output reg[BSIZE-1:0] q
);

always @(en or rst or d)
	begin
		if(rst)
			q <= 0;
		else
			if(en)
				q <= d;
	end
endmodule