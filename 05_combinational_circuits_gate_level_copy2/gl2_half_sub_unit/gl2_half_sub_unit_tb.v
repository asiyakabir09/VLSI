module gl2_half_sub_unit_tb;
    reg a,b; wire d,borrow;
    gl2_half_sub_unit dut(a,b,d,borrow);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, gl2_half_sub_unit_tb); end
    initial begin $monitor("time=%0t a=%b b=%b d=%b borrow=%b",$time,a,b,d,borrow);
    a=0;b=0;#2; b=1;#2; a=1;b=0;#2; b=1;#2; $finish; end
endmodule
