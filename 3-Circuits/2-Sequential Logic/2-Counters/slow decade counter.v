// https://hdlbits.01xz.net/wiki/Countslow

module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    
    always @(posedge clk) begin
        if (reset) q <= 4'd0;
        else if (slowena) q <= (q < 4'd9 ? q + 1 : 0);
    end

endmodule