module sq2_dff_async_reset_tb;
    reg clk,rst,d; wire q;
    sq2_dff_async_reset dut(clk,rst,d,q);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_dff_async_reset_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;d=0;#3;rst=0;d=1;#4;d=0;#4;d=1;#4;$finish; end
endmodule
