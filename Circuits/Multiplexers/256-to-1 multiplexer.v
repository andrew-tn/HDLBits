// https://hdlbits.01xz.net/wiki/Mux256to1
module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output out );
    
    always @(*) begin
        out = in[sel];
    end

endmodule
