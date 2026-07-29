module sq2_seq101_moore_detector_tb;
    reg clk,rst,din; wire detected;
    sq2_seq101_moore_detector dut(clk,rst,din,detected);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_seq101_moore_detector_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;din=0;#3;rst=0;din=1;#2;din=0;#2;din=1;#2;din=0;#2;din=1;#2;$finish; end
endmodule
