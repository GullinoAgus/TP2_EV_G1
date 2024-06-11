module VGA_counter(
	input clk,
	input rst,
	output reg[23:0] count
);

localparam offset = 1024;

always @(posedge clk, negedge rst)
	begin
		if(!rst)
			count <= 0;
			
		if(count < 640*480)
			count = offset + count + 1;
		else
			count <= offset;
	end
endmodule