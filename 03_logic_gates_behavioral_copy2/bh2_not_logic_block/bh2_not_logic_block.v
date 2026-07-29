module bh2_not_logic_block(a, y);
    input a;
    output reg y;
    always @(*) begin
        y = ~a;
    end
endmodule
