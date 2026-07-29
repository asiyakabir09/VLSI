module gl2_rca4_unit_tb;
    reg [3:0] a,b; reg cin; wire [3:0] sum; wire cout;
    gl2_rca4_unit dut(a,b,cin,sum,cout);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, gl2_rca4_unit_tb); end
    initial begin $monitor("time=%0t a=%b b=%b cin=%b cout=%b sum=%b",$time,a,b,cin,cout,sum);
    a=0;b=0;cin=0;#2; a=3;b=5;#2; a=15;b=1;#2; a=10;b=5;cin=1;#2; $finish; end
endmodule
