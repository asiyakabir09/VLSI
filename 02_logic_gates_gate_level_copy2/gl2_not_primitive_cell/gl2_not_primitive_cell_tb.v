module gl2_not_primitive_cell_tb;
    reg a;
    wire y;
    gl2_not_primitive_cell dut(a, y);
    initial begin $fsdbDumpfile("dump.fsdb"); $fsdbDumpvars(0, gl2_not_primitive_cell_tb); end
    initial begin
        $monitor("time=%0t a=%b y=%b", $time, a, y);
        a=0; #2; a=1; #2; $finish;
    end
endmodule
