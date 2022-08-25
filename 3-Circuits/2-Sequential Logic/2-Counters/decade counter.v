// https://hdlbits.01xz.net/wiki/Count10
module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    
    always @(posedge clk) begin
        if (reset) q = 0;
        else q <=  (q < 4'd9 ? q + 1 : 0);
        
    end
    
endmodule