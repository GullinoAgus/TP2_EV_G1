module video_buffer #(parameter bsize = 4, parameter watermark = 2)( //bsize and watermark must be a 8 bits multiplier
	input wire[bsize*8-1:0] data,
	input wire clk25MHz, //50MHz??
	input wire load,
	input wire en,
	input wire need_pixel,
 	output reg[7:0] video,
	output reg watermark_on,
	output reg full
);

localparam SLICE_WIDTH = 8;

reg[5:0] count = 0; //max 64 bytes
reg[bsize*SLICE_WIDTH-1:0] mem;

assign clk = clk25MHz && en;

always @(posedge clk)
	begin
		if(load)
			begin
				mem <= data;
				full <= 1;
				watermark_on <= 0;
			end
		else
			if((count < bsize) && need_pixel)
				begin
					video <= mem[SLICE_WIDTH-1:0];
					mem <= mem >> SLICE_WIDTH;
					count <= count + 6'b1;
					watermark_on <= (count >= watermark) ? 1'b1: 1'b0;
				end
			else
				begin
					count <= 0;
					full <= 0;
				end
	end
endmodule