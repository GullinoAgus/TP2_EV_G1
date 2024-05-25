`define CPU 0;
`define MMEM 1;
`define VGA 2;

module north_bridge_driver(
	input clk,
	input[0:2] device_req,
	input wire[15:0] data_in,
	output reg[15:0] data_out,
	output reg[1:0] selector_in,
	output reg[1:0] selector_out,
	output reg[15:0] fifo_data,
	output reg wrreq,
	output reg rdreq
);

localparam DEVICES = 3;

reg[1:0] count_in = 0;
reg[1:0] count_out = 1;

always @(posedge clk)
	begin
		
		//Escuchamos a un dispositivo a la vez
		if(count_in < DEVICES)
			begin
				selector_in = count_in;
				
				//Si el dispositivo quiere interactuar, guardamos el dato en la cola
				if(device_req[count_in] == 1)
					begin
						wrreq = 1;
						fifo_data = data_in;
						wrreq = 0;
					end
					
				count_in = count_in + 1;
			end
		else
			count_in = 0;
	end
endmodule