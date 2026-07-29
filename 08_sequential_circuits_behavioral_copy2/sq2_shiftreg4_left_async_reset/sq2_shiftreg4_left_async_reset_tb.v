module sq2_shiftreg4_left_async_reset_tb;
    reg clk,rst,sin; wire [3:0] q;
    sq2_shiftreg4_left_async_reset dut(clk,rst,sin,q);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_shiftreg4_left_async_reset_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;sin=0;#3;rst=0;sin=1;#2;sin=0;#2;sin=1;#2;sin=1;#2;sin=0;#4;$finish; end
endmodule
