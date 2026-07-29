module bh2_nand_logic_block(a, b, y);
    input a, b;
    output reg y;
    always @(*) begin
        y = ~(a & b);
    end
endmodule
