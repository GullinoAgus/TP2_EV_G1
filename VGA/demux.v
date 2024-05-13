module demux(
    input wire input_data,
    input wire select,
    output reg out_1,
	 output reg out_2
);

   always @(*) begin
      case(select)
			1'b0: 
				begin
					out_1 <= input_data;
					out_2 <= 1'b0;
				end
			1'b1:
				begin
					out_2 <= input_data;
					out_1 <= 1'b0;
				end
		endcase
   end

endmodule