module df2_mux2_selector(i0,i1,sel,y); input i0,i1,sel; output y; assign y = sel ? i1 : i0; endmodule
