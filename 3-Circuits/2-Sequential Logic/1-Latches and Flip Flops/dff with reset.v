// https://hdlbits.01xz.net/wiki/Dff8r

module top_module (
    input clk,
    input reset,            // Synchronous reset
    input [7:0] d,
    output [7:0] q
);
    
    always @(posedge clk) begin
        q = (~reset ? d : {8{1'd0}});
    end

endmodule