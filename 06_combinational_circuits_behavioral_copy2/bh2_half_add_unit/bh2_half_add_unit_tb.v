module bh2_half_add_unit_tb;
    reg a,b; wire s,c;
    bh2_half_add_unit dut(a,b,s,c);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, bh2_half_add_unit_tb); end
    initial begin $monitor("time=%0t a=%b b=%b s=%b c=%b",$time,a,b,s,c);
    a=0;b=0;#2; b=1;#2; a=1;b=0;#2; b=1;#2; $finish; end
endmodule
