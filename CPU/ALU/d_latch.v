module d_latch #(parameter BSIZE = 32)
(
	input[BSIZE-1:0] d,
	input en,
	input rst,
	output reg[BSIZE-1:0] q
);

always @(negedge rst)
	begin
		q <= 0;
	end

always @(en or d)
	begin
		if(en)
			q <= d;
	end
endmodule