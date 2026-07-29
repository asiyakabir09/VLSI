module sq2_shiftreg4_left_async_reset(clk,rst,sin,q); input clk,rst,sin; output reg [3:0] q; always @(posedge clk or posedge rst) begin if(rst) q<=0; else q<={q[2:0],sin}; end endmodule
