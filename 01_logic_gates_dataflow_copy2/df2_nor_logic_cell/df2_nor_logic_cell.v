module df2_nor_logic_cell(a, b, y);
 input a, b;
 output y;
 assign y = ~(a | b);
endmodule
