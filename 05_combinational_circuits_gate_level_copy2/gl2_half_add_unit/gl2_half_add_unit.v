module gl2_half_add_unit(a,b,s,c); input a,b; output s,c; xor x1(s,a,b); and a1(c,a,b); endmodule
