// https://hdlbits.01xz.net/wiki/Module_fadd

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    
    wire carry;
    wire trash;

    add16 lower (a[15:0], b[15:0], 0, sum[15:0], carry);
    add16 upper (a[31:16], b[31:16], carry, sum[31:16], trash);

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = a&b | a&cin | b&cin;

endmodule
