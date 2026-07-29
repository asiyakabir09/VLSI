module st2_demux1x2_leaf(d,sel,y0,y1); input d,sel; output y0,y1; wire nsel; not n1(nsel,sel); and a1(y0,d,nsel); and a2(y1,d,sel); endmodule
module st2_demux1x4_from_demux1x2_units(d,s1,s0,y0,y1,y2,y3); input d,s1,s0; output y0,y1,y2,y3; wire w0,w1; st2_demux1x2_leaf d0(d,s1,w0,w1); st2_demux1x2_leaf d1(w0,s0,y0,y1); st2_demux1x2_leaf d2(w1,s0,y2,y3); endmodule
