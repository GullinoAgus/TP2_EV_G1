module demux4(
    input wire[15:0] input_data,
    input wire[0:1] select,
    output reg[15:0] out_1,
	 output reg[15:0] out_2,
	 output reg[15:0] out_3,
	 output reg[15:0] out_4
);

   always @(*) begin
      case(select)
			2'b00: 
				begin
					out_1 <= input_data;
					out_2 <= 0;
					out_3 <= 0;
					out_4 <= 0;
				end
			2'b01:
				begin
					out_1 <= 0;
					out_2 <= input_data;
					out_3 <= 0;
					out_4 <= 0;
				end
			2'b10: 
				begin
					out_1 <= 0;
					out_2 <= 0;
					out_3 <= input_data;
					out_4 <= 0;
				end
			2'b11:
				begin
					out_1 <= 0;
					out_2 <= 0;
					out_3 <= 0;
					out_4 <= input_data;
				end
		endcase
   end

endmodule