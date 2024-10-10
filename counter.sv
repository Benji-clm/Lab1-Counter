module counter #(
    parameter WIDTH = 8
)(
    // interface signals
    input logic         clk,    // clock
    input logic         clk,    // reset
    input logic         en,     //counter enable
    ouput logic [WIDTH-1:0] count,  // count output
);

always_ff @ (possedge clk)
    if (rst) count <= {WIDTH{1'b0}};
    else     count <= count + {{WIDTH-1{1'b0}}, en};

endmodule