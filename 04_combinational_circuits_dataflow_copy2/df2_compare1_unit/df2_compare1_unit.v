module df2_compare1_unit(a,b,gt,eq,lt); input a,b; output gt,eq,lt; assign gt=a&~b; assign eq=~(a^b); assign lt=~a&b; endmodule
