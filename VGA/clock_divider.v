module clock_divider #(parameter div_value = 0) (
	input wire clk, // 50Mhz
	output reg divided_clk = 0
);

// division_value = clk / (2*desiredFrecuency) - 1
integer counter_value = 0;

always@ (posedge clk)
	begin 
		if(counter_value == div_value)
			begin 
				counter_value <= 0; // Reset value
				divided_clk <= ~divided_clk; // flip clk status
			end
		else
			counter_value <= counter_value + 1; // Count up
	end

endmodule