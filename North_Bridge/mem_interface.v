module mem_interface(
	input clk,
	input rst,
	input busy,
	input read,
	input write,
	
	output reg write_enabled,
	output reg read_enabled
);

reg currently_busy;

always @(posedge clk, negedge rst)
	begin
		if(!rst)
			currently_busy <= 0;
			
		currently_busy <= busy;
		
		if(!currently_busy)
			begin
				if(read == 1)
					begin
						read_enabled <= 1;
					end
				if(write == 1)
					begin
						write_enabled <= 1;
					end
			end
		else
			begin
				read_enabled <= 0;
				write_enabled <= 0;
			end
	end
endmodule