module sq2_counter4_up_async_reset_tb;
    reg clk,rst; wire [3:0] count;
    sq2_counter4_up_async_reset dut(clk,rst,count);
    initial begin clk=0; forever #1 clk=~clk; end
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, sq2_counter4_up_async_reset_tb); end
    initial begin $monitor("time=%0t", $time); rst=1;#3;rst=0;#20;$finish; end
endmodule
