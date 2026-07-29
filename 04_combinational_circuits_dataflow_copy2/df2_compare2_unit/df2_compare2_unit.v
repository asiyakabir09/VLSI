module df2_compare2_unit(a,b,gt,eq,lt); input [1:0] a,b; output gt,eq,lt; assign gt=(a>b); assign eq=(a==b); assign lt=(a<b); endmodule
