// VGA 640x480 @ 60 fps

module VGA_Driver(
	input clk25MHz,         // 25 MHz
	input rst,
	input[7:0] colors,
	output hsync,      	// horizontal sync
	output vsync,	      // vertical sync
	output [2:0] red,
	output [2:0] green,
	output [1:0] blue	
);

	reg [9:0] counter_x = 0;  // horizontal counter
	reg [9:0] counter_y = 0;  // vertical counter
	
	always @(negedge rst)
		begin
			counter_x <= 0;
			counter_y <= 0;
		end
	
	// counter and sync generation
	always @(posedge clk25MHz)  // horizontal counter
		begin 
			if (counter_x < 799)
				counter_x <= counter_x + 1;  // horizontal counter (including off-screen horizontal 160 pixels) total of 800 pixels 
			else
				counter_x <= 0;              
		end
	
	always @ (posedge clk25MHz)  // vertical counter
		begin 
			if (counter_x == 799)  // only counts up 1 count after horizontal finishes 800 counts
				begin
					if (counter_y < 525)  // vertical counter (including off-screen vertical 45 pixels) total of 525 pixels
						counter_y <= counter_y + 1;
					else
						counter_y <= 0;              
				end 
		end

	// hsync and vsync output assignments
	assign hsync = (counter_x >= 0 && counter_x < 96) ? 1:0;  // hsync high for 96 counts                                                 
	assign vsync = (counter_y >= 0 && counter_y < 2) ? 1:0;   // vsync high for 2 counts
						
	assign red = (counter_x > 144 && counter_x <= 783 && counter_y > 35 && counter_y <= 514) ? colors[7:5] : 2'b0;
	assign blue = (counter_x > 144 && counter_x <= 783 && counter_y > 35 && counter_y <= 514) ? colors[4:2] : 1'b0;
	assign green = (counter_x > 144 && counter_x <= 783 && counter_y > 35 && counter_y <= 514) ? colors[1:0] : 2'b0;
	
endmodule