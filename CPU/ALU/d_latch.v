module d_latch #(parameter BSIZE = 32)
(
	input wire[BSIZE-1:0] d,
	input en,
	output reg[BSIZE-1:0] q,
	output wire[BSIZE-1:0] q_n
);


always @(d)
	begin
		if (en) 
			begin
				q <= d;
			end
	end
	
assign q_n = ~q;

endmodule