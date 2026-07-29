module df2_half_sub_unit(a,b,d,borrow); input a,b; output d,borrow; assign d=a^b; assign borrow=~a&b; endmodule
