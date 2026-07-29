module bh2_decoder2_to_4_unit(a1,a0,y); input a1,a0; output reg [3:0] y; always @(*) begin case({a1,a0}) 2'b00:y=4'b0001; 2'b01:y=4'b0010; 2'b10:y=4'b0100; 2'b11:y=4'b1000; endcase end endmodule
