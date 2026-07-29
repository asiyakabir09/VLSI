module df2_full_sub_unit(a,b,bin,d,bout); input a,b,bin; output d,bout; assign d=a^b^bin; assign bout=(~a&b)|(~(a^b)&bin); endmodule
