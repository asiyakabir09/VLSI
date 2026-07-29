module df2_demux1x2_router(d,sel,y0,y1); input d,sel; output y0,y1; assign y0=d&~sel; assign y1=d&sel; endmodule
