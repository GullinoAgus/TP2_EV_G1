module reg_bank(
input wire[4:0] busAsel,
input wire[4:0] busBsel,
output [31:0] busA,
output [31:0] busB,
input [31:0] busC,
input [4:0] busCsel,
input reset,
input clk,
input en, 
output wire[31:0] reg1,
output wire[31:0] reg2,
output wire[31:0] reg3,
output wire[31:0] reg4
);
integer i = 0;
reg [31:0] reg_bank[31:0];
assign reg1 = reg_bank[1];
assign reg2 = reg_bank[2];
assign reg3 = reg_bank[3];
assign reg4 = reg_bank[4];

assign busA = reg_bank[busAsel];
assign busB = reg_bank[busBsel];
assign clkin = clk && en;

always @(posedge clkin, negedge reset) begin
	if (!reset) begin
		for (i=0; i < 32; i=i+1) begin
			reg_bank[i] = 0;
		end
	end
	else begin
		if (busCsel != 0) reg_bank[busCsel] <= busC;
	end	

end



endmodule



