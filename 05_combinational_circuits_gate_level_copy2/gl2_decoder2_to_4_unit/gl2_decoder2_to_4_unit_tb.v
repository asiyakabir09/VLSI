module gl2_decoder2_to_4_unit_tb;
    reg a1,a0; wire [3:0] y;
    gl2_decoder2_to_4_unit dut(a1,a0,y);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, gl2_decoder2_to_4_unit_tb); end
    initial begin $monitor("time=%0t a1a0=%b%b y=%b",$time,a1,a0,y);
    a1=0;a0=0;#2; a0=1;#2; a1=1;a0=0;#2; a0=1;#2; $finish; end
endmodule
