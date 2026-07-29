module bh2_full_sub_unit(a,b,bin,d,bout); input a,b,bin; output reg d,bout; always @(*) begin d=a^b^bin; bout=(~a&b)|(~(a^b)&bin); end endmodule
