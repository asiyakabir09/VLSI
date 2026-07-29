module df2_compare2_unit_tb;
    reg [1:0] a,b; wire gt,eq,lt;
    df2_compare2_unit dut(a,b,gt,eq,lt);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, df2_compare2_unit_tb); end
    initial begin $monitor("time=%0t a=%b b=%b gt=%b eq=%b lt=%b",$time,a,b,gt,eq,lt);
    a=0;b=0;#2; a=1;b=2;#2; a=3;b=1;#2; a=2;b=2;#2; $finish; end
endmodule
