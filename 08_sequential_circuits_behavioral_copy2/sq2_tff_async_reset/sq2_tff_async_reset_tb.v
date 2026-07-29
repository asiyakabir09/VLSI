module sq2_tff_async_reset_tb;
    reg clk,rst,t; wire q;
    sq2_tff_async_reset dut(clk,rst,t,q);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_tff_async_reset_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;t=0;#3;rst=0;t=1;#8;t=0;#4;t=1;#4;$finish; end
endmodule
