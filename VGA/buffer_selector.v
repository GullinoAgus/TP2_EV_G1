module buffer_selector(
	input wire f1,
	input wire f2,
	input wire rst,
 	output reg select
);

always @(f1, f2, rst)
	begin
		if(!rst) 
			select <= 0;
		else
			begin
				if(!f1 && f2) select <= 1;
				if(!f2 && f1) select <= 0;
			end
	end
	
endmodule