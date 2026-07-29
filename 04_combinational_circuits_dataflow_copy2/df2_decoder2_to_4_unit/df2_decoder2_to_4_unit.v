module df2_decoder2_to_4_unit(a1,a0,y); input a1,a0; output [3:0] y; assign y[0]=~a1&~a0; assign y[1]=~a1&a0; assign y[2]=a1&~a0; assign y[3]=a1&a0; endmodule
