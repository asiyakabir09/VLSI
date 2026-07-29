module gl2_nand_primitive_cell(a, b, y);
 input a, b;
 output y;
 nand nand1(y, a, b);
endmodule
