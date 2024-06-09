// VGA 640x480

module VGA_Driver(
	input clk25MHz,         // 25 MHz
	input rst,
	input en,
	input[7:0] colors,
	output hsync,      	// horizontal sync
	output vsync,	      // vertical sync
	output [2:0] red,
	output [2:0] green,
	output [1:0] blue,
	output need_pixel,
	output wire[9:0] counterX,
	output wire[9:0] counterY
);

	localparam BOTTOM_COUNTER_X = 5; 	// 144 
	localparam BOTTOM_COUNTER_Y = 1;	// 35
	localparam TOP_COUNTER_X = 14;		// 783	
	localparam TOP_COUNTER_Y = 14;		// 514
	localparam MAX_X = 20; //799
	localparam MAX_Y = 30; //525
	localparam MAX_SYNC_X = 2; //96
	localparam MAX_SYNC_Y = 2; //2

	reg [9:0] counter_x = 0;  // horizontal counter
	reg [9:0] counter_y = 0;  // vertical counter
	wire clk;
	
	assign counterX = counter_x;
	assign counterY = counter_y;
	
	assign clk = clk25MHz && en;
	
	always @ (posedge clk, negedge rst)  // vertical counter
		begin 
			if(!rst)
				begin
					counter_x <= 0;
					counter_y <= 0;
				end
			else
				if (counter_x < MAX_X)
					counter_x <= counter_x + 10'b1;  // horizontal counter (including off-screen horizontal 160 pixels) total of 800 pixels 
				else
					begin
						if (counter_y < MAX_Y)  // vertical counter (including off-screen vertical 45 pixels) total of 525 pixels
							counter_y <= counter_y + 10'b1;
						else
							counter_y <= 0;
							
						counter_x <= 0;
					end
		end

	// hsync and vsync output assignments
	assign hsync = (counter_x >= 0 && counter_x < MAX_SYNC_X) ? 1'b1:1'b0;  // hsync high for 96 counts                                                 
	assign vsync = (counter_y >= 0 && counter_y < MAX_SYNC_Y) ? 1'b1:1'b0;   // vsync high for 2 counts
	
	assign need_pixel = (counter_x > BOTTOM_COUNTER_X && counter_x <= TOP_COUNTER_X && counter_y > BOTTOM_COUNTER_Y && counter_y <= TOP_COUNTER_Y) ? 1'b1 : 1'b0;	
	assign red = (counter_x > BOTTOM_COUNTER_X && counter_x <= TOP_COUNTER_X && counter_y > BOTTOM_COUNTER_Y && counter_y <= TOP_COUNTER_Y) ? colors[7:5] : 3'b0;
	assign green = (counter_x > BOTTOM_COUNTER_X && counter_x <= TOP_COUNTER_X && counter_y > BOTTOM_COUNTER_Y && counter_y <= TOP_COUNTER_Y) ? colors[4:2] : 3'b0;
	assign blue = (counter_x > BOTTOM_COUNTER_X && counter_x <= TOP_COUNTER_X && counter_y > BOTTOM_COUNTER_Y && counter_y <= TOP_COUNTER_Y) ? colors[1:0] : 2'b0;	
	
endmodule