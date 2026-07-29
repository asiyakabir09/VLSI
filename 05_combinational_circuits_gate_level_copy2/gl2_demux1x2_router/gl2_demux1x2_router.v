module gl2_demux1x2_router(d,sel,y0,y1); input d,sel; output y0,y1; wire nsel; not n1(nsel,sel); and a1(y0,d,nsel); and a2(y1,d,sel); endmodule
