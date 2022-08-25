// https://hdlbits.01xz.net/wiki/Module_cseladd
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire cout, c1, c2;
    wire [15:0] carryHighSum, carryLowSum;
    
    add16 adderLow (a[15:0], b[15:0], 0, sum[15:0], cout);
    add16 adderCarryHigh (a[31:16], b[31:16], 1, carryHighSum, c1);
    add16 adderCarryLow (a[31:16], b[31:16], 0, carryLowSum, c2);
    
    always @(*) begin
        case(cout)
            1: sum[31:16] = carryHighSum;
            0: sum[31:16] = carryLowSum;
        endcase
    end

endmodule
