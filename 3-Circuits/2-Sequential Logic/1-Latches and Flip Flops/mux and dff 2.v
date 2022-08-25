// https://hdlbits.01xz.net/wiki/Exams/2014_q4a
module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
	wire mux1out;
    always @(posedge clk) begin
        Q = (L ? R : (E ? w : Q));
    end
        
    
endmodule