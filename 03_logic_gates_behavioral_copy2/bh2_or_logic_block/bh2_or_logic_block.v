module bh2_or_logic_block(a, b, y);
    input a, b;
    output reg y;
    always @(*) begin
        y = a | b;
    end
endmodule
