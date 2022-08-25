// https://hdlbits.01xz.net/wiki/Popcount255
module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    integer i;
    reg [7:0] counter;
    always @(*) begin
        counter = 0;
       for (i=0; i<255; i=i+1) begin
           counter = (in[i] == 1'b1 ? counter+1'b1 : counter);
        end
        
        out = counter;
    end
         

endmodule
