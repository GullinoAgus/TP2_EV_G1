module VGA_counter(
	input clk,
	input rst,
	input data_needed,
	output wire[23:0] count_out
);

localparam offset = 1024;

reg[23:0] count;
assign count_out = count + offset;

always @(posedge clk, negedge rst)
	begin
		if(!rst)
			count <= 0;
		else
			if(data_needed)
				count <= count < 640*480/2 ? count + 1 : 0;
	end
endmodule