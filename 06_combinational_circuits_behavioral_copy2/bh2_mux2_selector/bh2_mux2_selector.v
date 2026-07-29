module bh2_mux2_selector(i0,i1,sel,y); input i0,i1,sel; output reg y; always @(*) begin if(sel==0) y=i0; else y=i1; end endmodule
