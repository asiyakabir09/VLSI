module sq2_jkff_async_reset_tb;
    reg clk,rst,j,k; wire q;
    sq2_jkff_async_reset dut(clk,rst,j,k,q);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_jkff_async_reset_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;j=0;k=0;#3;rst=0;j=0;k=1;#4;j=1;k=0;#4;j=1;k=1;#6;$finish; end
endmodule
