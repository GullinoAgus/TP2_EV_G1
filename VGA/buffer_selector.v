module buffer_selector(
	input wire e1,
	input wire e2,
	input wire rst,
 	output reg select
);

always @(negedge rst)
	begin
		select <= 0;
	end

always @(e1, e2)
	begin
		if(e1 == 1 && e2 != 1) select <= 1;
		if(e2 == 1 && e1 != 1) select <= 0;
	end
	
endmodule