module popcount8 (
    input  [7:0] in,
    output [3:0] out
);
    assign out = in[0] + in[1] + in[2] + in[3] +
                 in[4] + in[5] + in[6] + in[7];
endmodule


/*
module popcount #(
    parameter WIDTH = 32
)(
    input  [WIDTH-1:0] in,
    output [$clog2(WIDTH+1)-1:0] out
);
    integer i;
    reg [$clog2(WIDTH+1)-1:0] count;
    always @(*) begin
        count = 0;
        for (i = 0; i < WIDTH; i = i + 1)
            count = count + in[i];
    end
    assign out = count;
endmodule

*/

//dot_product_bnn = popcount(XNOR(input, weight))
