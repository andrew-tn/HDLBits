// https://hdlbits.01xz.net/wiki/Exams/m2014_q4j
module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [3:0] carry;
    
    full_adder add0 (x[0], y[0], 0, carry[0], sum[0]);
    full_adder add1 (x[1], y[1], carry[0], carry[1], sum[1]);
    full_adder add2 (x[2], y[2], carry[1], carry[2], sum[2]);
    full_adder add3 (x[3], y[3], carry[2], carry[3], sum[3]);
    assign sum[4] = carry[3];

endmodule

module full_adder ( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = cin^a^b;
    assign cout = (a&b) | (cin&(a^b));
    
endmodule
