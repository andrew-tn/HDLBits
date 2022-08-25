// https://hdlbits.01xz.net/wiki/Conditional
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] lessAb;
    wire [7:0] lessCd;
    
    // assign intermediate_result1 = compare? true: false;
    assign lessAb = (a<b ? a : b);
    assign lessCd = (c<d ? c : d);
    
    assign min = (lessAb<lessCd ? lessAb : lessCd);
    
    

endmodule
