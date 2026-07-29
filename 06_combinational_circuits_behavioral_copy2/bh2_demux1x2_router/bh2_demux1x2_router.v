module bh2_demux1x2_router(d,sel,y0,y1); input d,sel; output reg y0,y1; always @(*) begin y0=0; y1=0; if(sel==0)y0=d; else y1=d; end endmodule
