module video_buffer #(parameter bsize = 4, parameter watermark = 2)( //bsize and watermark must be a 8 bits multiplier
	input wire[bsize*8-1:0] data,
	input wire clk25MHz, //50MHz??
	input wire load,
	input wire en,
 	output reg[7:0] video,
	output reg watermark_on = 0,
	output reg empty = 1
);

localparam SLICE_WIDTH = 8;

reg[5:0] count = 0; //max 64 bytes
reg[bsize*SLICE_WIDTH-1:0] mem;

always @(posedge clk25MHz && en, posedge load)
	begin
		if(load)
			begin
				mem = data;
				empty = 0;
				watermark_on = 0;
			end
		else
			if(en)
				if(count < bsize)
					begin
						video <= mem[SLICE_WIDTH-1:0];
						mem <= mem >> SLICE_WIDTH;
						count <= count + 1;
						watermark_on <= (count >= watermark) ? 1:0;
					end
				else
					begin
						count <= 0;
						empty <= 1;
					end
	end
endmodule