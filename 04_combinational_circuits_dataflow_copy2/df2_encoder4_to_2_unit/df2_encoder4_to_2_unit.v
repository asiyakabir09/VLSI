module df2_encoder4_to_2_unit(i0,i1,i2,i3,y1,y0); input i0,i1,i2,i3; output y1,y0; assign y1=i2|i3; assign y0=i1|i3; endmodule
