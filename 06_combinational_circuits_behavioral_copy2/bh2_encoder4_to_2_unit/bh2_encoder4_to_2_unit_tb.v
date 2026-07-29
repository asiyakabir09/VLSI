module bh2_encoder4_to_2_unit_tb;
    reg i0,i1,i2,i3; wire y1,y0;
    bh2_encoder4_to_2_unit dut(i0,i1,i2,i3,y1,y0);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, bh2_encoder4_to_2_unit_tb); end
    initial begin $monitor("time=%0t i=%b%b%b%b y=%b%b",$time,i3,i2,i1,i0,y1,y0);
    i0=1;i1=0;i2=0;i3=0;#2; i0=0;i1=1;#2; i1=0;i2=1;#2; i2=0;i3=1;#2; $finish; end
endmodule
