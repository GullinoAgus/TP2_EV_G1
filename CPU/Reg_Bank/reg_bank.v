module reg_bank(
input clk,
input [0:4] busAsel,
input [0:4] busBsel,
output reg [0:31] busA,
output reg [0:31] busB,
input [0:31] busC,
input [0:4] busCsel,
input WriteC,
input enOut,
input reset
);

reg [0:31] reg_bank[0:31] = 0;
integer i;

always @(posedge clk or negedge reset) begin
	if (!reset) begin
		for (i=0; i < 32; i=i+1) begin
			reg_bank[i] = 0;
		end
		busA = 0;
		busB = 0;
	end
	else if (enOut) begin
		busA <= reg_bank[busAsel];
		busB <= reg_bank[busBsel];
	end
	
	

end

always @(posedge WriteC) begin

	if (busCsel != 0)
		reg_bank[busCsel] <= busC;

end
endmodule



