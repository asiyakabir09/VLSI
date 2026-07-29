module df2_demux1x4_router_tb;
    reg d,s1,s0; wire y0,y1,y2,y3;
    df2_demux1x4_router dut(d,s1,s0,y0,y1,y2,y3);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, df2_demux1x4_router_tb); end
    initial begin $monitor("time=%0t d=%b s1s0=%b%b y=%b%b%b%b",$time,d,s1,s0,y3,y2,y1,y0);
    d=1;s1=0;s0=0;#2; s0=1;#2; s1=1;s0=0;#2; s0=1;#2; $finish; end
endmodule
