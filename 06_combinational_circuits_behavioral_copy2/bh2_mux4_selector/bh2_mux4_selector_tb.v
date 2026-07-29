module bh2_mux4_selector_tb;
    reg i0,i1,i2,i3,s1,s0; wire y;
    bh2_mux4_selector dut(i0,i1,i2,i3,s1,s0,y);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, bh2_mux4_selector_tb); end
    initial begin $monitor("time=%0t s1s0=%b%b y=%b",$time,s1,s0,y);
    i0=1;i1=0;i2=1;i3=0;s1=0;s0=0;#2; s0=1;#2; s1=1;s0=0;#2; s0=1;#2; $finish; end
endmodule
