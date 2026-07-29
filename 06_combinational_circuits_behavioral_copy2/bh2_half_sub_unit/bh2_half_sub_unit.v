module bh2_half_sub_unit(a,b,d,borrow); input a,b; output reg d,borrow; always @(*) begin d=a^b; borrow=~a&b; end endmodule
