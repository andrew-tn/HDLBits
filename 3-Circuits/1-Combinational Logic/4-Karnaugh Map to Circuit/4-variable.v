// https://hdlbits.01xz.net/wiki/Kmap2
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out = (~c&~b) | (c&~d&~a) | (~a&b&~d) | (c&d&(a|b));

endmodule
