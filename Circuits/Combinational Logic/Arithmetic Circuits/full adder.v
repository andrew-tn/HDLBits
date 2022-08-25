// https://hdlbits.01xz.net/wiki/Fadd

module top_module( 
    input a, b, cin,
    output cout, sum );

    assign sum = cin^a^b;
    assign cout = (a&b) | (cin&(a^b));
    
endmodule
