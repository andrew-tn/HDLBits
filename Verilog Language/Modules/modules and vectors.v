// https://hdlbits.01xz.net/wiki/Module_shift8
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] w1;
    wire [7:0] w2;
    wire [7:0] w3;
    
    
    my_dff8 inst1 (clk, d, w1);
    my_dff8 inst2 (clk, w1, w2);
    my_dff8 inst3 (clk, w2, w3);
    
    always @(*) begin
        case(sel)
            2'b01: q = w1;
            2'b10: q = w2;
            2'b11: q = w3;
            default: q = d;
            
        endcase
    end
endmodule
