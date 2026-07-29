module gl2_xor_primitive_cell(a, b, y);
 input a, b;
 output y;
 xor xor1(y, a, b);
endmodule
