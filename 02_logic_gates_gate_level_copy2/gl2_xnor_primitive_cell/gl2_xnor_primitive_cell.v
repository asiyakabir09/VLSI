module gl2_xnor_primitive_cell(a, b, y);
 input a, b;
 output y;
 xnor xnor1(y, a, b);
endmodule
