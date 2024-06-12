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
		reg_bank[0] = 0;
		reg_bank[1] = 0;
		reg_bank[2] = 0;
		reg_bank[3] = 0;
		reg_bank[4] = 0;
		reg_bank[5] = 0;
		reg_bank[6] = 0;
		reg_bank[7] = 0;
		reg_bank[8] = 0;
		reg_bank[9] = 0;
		reg_bank[10] = 0;
		reg_bank[11] = 0;
		reg_bank[12] = 0;
		reg_bank[13] = 0;
		reg_bank[14] = 0;
		reg_bank[15] = 0;
		reg_bank[16] = 0;
		reg_bank[17] = 0;
		reg_bank[18] = 0;
		reg_bank[19] = 0;
		reg_bank[20] = 0;
		reg_bank[21] = 0;
		reg_bank[22] = 0;
		reg_bank[23] = 0;
		reg_bank[24] = 0;
		reg_bank[25] = 0;
		reg_bank[26] = 0;
		reg_bank[27] = 0;
		reg_bank[28] = 0;
		reg_bank[29] = 0;
		reg_bank[30] = 0;
		reg_bank[31] = 0;
	end
	else begin
		if (busCsel != 0) reg_bank[busCsel] <= busC;
	end	

end



endmodule



