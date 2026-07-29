module bh2_and_logic_block(a, b, y);
    input a, b;
    output reg y;
    always @(*) begin
        y = a & b;
    end
endmodule
