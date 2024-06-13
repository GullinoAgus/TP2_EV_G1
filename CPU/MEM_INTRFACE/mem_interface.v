module mem_interface(
	input [31:0] imm,
	input [31:0] r2,
	input [31:0] r1_in,
	input [14:0] op_data,
	input [15:0] data_north,
	input [31:0] data_local,
	input mem_rdy,
	input clk,
	input rst,
	
	output [31:0]r1_out,
	output reg [31:0] write_data,
	output reg [31:0]addr,
	output reg mem_read_local,
	output reg mem_read_north,
	output reg mem_write_local,
	output reg mem_write_north,
	output reg mem_busy,
	output [4:0]state_out
);

reg [31:0]data = 0;
reg read = 0;

reg [14:0]op_data_temp = 0;

reg readFinished = 0;
reg writeFinished = 0;
reg mem_rdy_highedge = 0;
reg [4:0] state = IDLE;

assign r1_out =  read ? data : r1_in;
assign state_out = state;
parameter  IDLE = 0,
			WAIT_READ = 1,
			PREP1_READ = 2,
			PREP2_READ = 3,
			WAIT_WRITE = 4,
			PREP1_WRITE = 5,
			PREP2_WRITE = 6,
			LOCAL_READ = 7,
			LOCAL_WRITE = 8,
			SKIP = 9;
initial begin
	mem_busy = 0;
end
always @(state) 
	begin
		case (state)
			IDLE: begin
				mem_write_north <= 0;
				mem_read_north <= 0;
				mem_write_local <= 0;
				mem_read_local <= 0;
				mem_busy <= 0;
				read <= 0;
			end
			WAIT_READ: begin
				mem_busy <= 1;
				read <= 1;
			end
			PREP1_READ: begin
				mem_busy <= 1;
				mem_read_north <= 1;
				read <= 1;
			end
			PREP2_READ: begin
			end
			WAIT_WRITE: begin
				mem_busy <= 1;
				
			end
			PREP1_WRITE: begin
				mem_busy <= 1;
				mem_write_north <= 1;
			
			end
			PREP2_WRITE: begin
			
			end
			LOCAL_READ: begin
				mem_busy <= 1;
				mem_read_local <= 1;
				read <= 1;
			end
			LOCAL_WRITE: begin
				mem_write_local <= 1;
			end
			SKIP: begin
				mem_busy <= 0;
				mem_read_local <= 0;
			end
			default: begin
				state <= IDLE;
			end
		endcase
	end


always @(posedge clk, negedge rst) begin
	if (!rst)
               state <= IDLE;
    else begin
		case (state)
			IDLE: begin
				addr = r1_in + imm;
				op_data_temp <= op_data;
				if (op_data[7]) begin
					if (!addr[24]) begin
						if (!mem_rdy) begin
							state <= WAIT_READ;
						end
						else begin
							state <= PREP1_READ;
						end
					end
					else begin
						state = LOCAL_READ;
					end
				end
				else if (op_data[8]) begin
					write_data <= r2;
					if (!addr[24]) begin
						if (!mem_rdy) begin
							state <= WAIT_WRITE;
						end
						else begin
							state <= PREP1_WRITE;
						end
					end
					else begin
						state <= LOCAL_WRITE;
					end
					
				end
			end
			WAIT_READ: begin
				if (mem_rdy) begin
					state <= PREP1_READ;
				end
			end
			PREP1_READ: begin
				if (mem_rdy) begin		// Termino de leer
					case (op_data_temp[14:12]) 
						3'b001: begin	// 1 byte
							if (op_data_temp[6]) begin
								data <= {24'h000000, data_north[7:0]};
							end
							else begin
							 	data <= {data_north[7] ? 24'hFFFFFF : 24'h000000, data_north[7:0]};
							end
							state <= IDLE;
						end
						3'b010: begin	// 2 byte
							if (op_data_temp[6]) begin
								data <= {16'h0000, data_north};
							end
							else begin
								data <= {data_north[15] ? 16'hFFFF : 16'h0000, data_north};
							end
							state <= IDLE;
						end
						3'b100: begin	// 4 byte
							state <= PREP2_READ;
							data <= {16'h0000, data_north};
							addr <= addr + 1;
						end
						default: begin
						end
					endcase
				end
			end
			PREP2_READ: begin
				if (mem_rdy) begin		// Termino de leer
					data <= {data_north, data[15:0]};
					state <= IDLE;
				end
			end
			WAIT_WRITE: begin
				if (mem_rdy) begin
					state <= PREP1_WRITE;
				end
			end
			PREP1_WRITE: begin
				if (mem_rdy) begin
					case (op_data_temp[14:12]) 
						3'b001, 3'b010: begin	// 1 byte
							state <= IDLE;
						end
						3'b100: begin	// 4 byte
							write_data <=  write_data >> 16;
							addr <= addr + 1;
							state <= PREP2_WRITE;
						end
						default: begin
						end
					endcase
				end
			end
			PREP2_WRITE: begin
				if (mem_rdy) begin
					state <= IDLE;
				end
			end
			LOCAL_READ: begin
				case (op_data_temp[14:12])
						3'b001: begin	// 1 byte
							if (op_data_temp[6]) begin
								data <= {24'h000000, data_local[7:0]};
							end
							else begin
							 	data <= {data_north[7] ? 24'hFFFFFF : 24'h000000, data_local[7:0]};
							end
							state <= SKIP;
						end
						3'b010: begin	// 2 byte
							if (op_data_temp[6]) begin
								data <= {16'h0000, data_local[15:0]};
							end
							else begin
								data <= {data_local[15] ? 16'hFFFF : 16'h0000, data_local[15:0]};
							end
							state <= SKIP;
						end
						3'b100: begin	// 4 byte
							data <= data_local;
							state <= SKIP;
						end
						default: begin
							state <= SKIP;
						end
				endcase
			end
			LOCAL_WRITE: begin
				state <= IDLE;
			end
			SKIP: begin
				state <= IDLE;
			end
			default: begin
				state <= IDLE;
			end
          endcase
	end
end



endmodule