module sq2_srff_async_reset_tb;
    reg clk,rst,s,r; wire q;
    sq2_srff_async_reset dut(clk,rst,s,r,q);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_srff_async_reset_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;s=0;r=0;#3;rst=0;s=1;r=0;#4;s=0;r=1;#4;s=0;r=0;#4;$finish; end
endmodule
