module gl2_mux2_selector(i0,i1,sel,y); input i0,i1,sel; output y; wire nsel,w0,w1; not not1(nsel,sel); and and1(w0,i0,nsel); and and2(w1,i1,sel); or or1(y,w0,w1); endmodule
