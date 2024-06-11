module output_handler(
	input read_ready,
	input clk,
	input VGA_data_needed,
	output reg load_VGA
);

reg[1:0] count = 0;

always @(posedge clk)
	begin
		if(VGA_data_needed)
			if (count < 2)
				begin
					count <= count + 1;
					if(read_ready)
						begin
							load_VGA <= 1;
						end
				end
			else
				begin
					count <= 0;
					load_VGA <= 0;
				end
	end
endmodule