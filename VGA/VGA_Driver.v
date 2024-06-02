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
	output [1:0] blue	
);

	reg [9:0] counter_x = 0;  // horizontal counter
	reg [9:0] counter_y = 0;  // vertical counter
	
	always @ (posedge clk25MHz && en, negedge rst)  // vertical counter
		begin 
			if(!rst)
				begin
					counter_x <= 0;
					counter_y <= 0;
				end
			else
				if (counter_x < 799)
					counter_x <= counter_x + 10'b1;  // horizontal counter (including off-screen horizontal 160 pixels) total of 800 pixels 
				else
					begin
						if (counter_y < 525)  // vertical counter (including off-screen vertical 45 pixels) total of 525 pixels
							counter_y <= counter_y + 10'b1;
						else
							counter_y <= 0;
							
						counter_x <= 0;
					end
		end

	// hsync and vsync output assignments
	assign hsync = (counter_x >= 0 && counter_x < 96) ? 1'b1:1'b0;  // hsync high for 96 counts                                                 
	assign vsync = (counter_y >= 0 && counter_y < 2) ? 1'b1:1'b0;   // vsync high for 2 counts
						
	assign red = (counter_x > 144 && counter_x <= 783 && counter_y > 35 && counter_y <= 514) ? colors[7:5] : 3'b0;
	assign green = (counter_x > 144 && counter_x <= 783 && counter_y > 35 && counter_y <= 514) ? colors[4:2] : 3'b0;
	assign blue = (counter_x > 144 && counter_x <= 783 && counter_y > 35 && counter_y <= 514) ? colors[1:0] : 2'b0;	
	
endmodule