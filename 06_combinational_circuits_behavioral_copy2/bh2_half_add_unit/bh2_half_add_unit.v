module bh2_half_add_unit(a,b,s,c); input a,b; output reg s,c; always @(*) begin s=a^b; c=a&b; end endmodule
