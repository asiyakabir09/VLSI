module df2_nand_logic_cell(a, b, y);
 input a, b;
 output y;
 assign y = ~(a & b);
endmodule
