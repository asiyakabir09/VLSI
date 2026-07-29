module bh2_not_logic_block_tb;
    reg a;
    wire y;
    bh2_not_logic_block dut(a, y);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, bh2_not_logic_block_tb); end
    initial begin
        $monitor("time=%0t a=%b y=%b", $time, a, y);
        a=0; #2; a=1; #2; $finish;
    end
endmodule
