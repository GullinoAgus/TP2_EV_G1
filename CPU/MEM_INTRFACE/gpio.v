module gpio(
	input clk,
	input rst,
	
	output [7:0] gpio_read,
	input [7:0] gpio_write,

	input write,
	
	input [7:0]gpio_in,
	output [7:0]gpio_out
);

reg [7:0]gpio_input = 0;
reg [7:0]gpio_output = 0;

assign gpio_out = gpio_output;
assign gpio_read = gpio_input;

always @(negedge clk, negedge rst) begin

	if (!rst) begin
		gpio_input <= 0;
		gpio_output <= 0;
	end
	else begin
		gpio_input <= gpio_in;
		if (write) gpio_output <= gpio_write;
	end
end

endmodule