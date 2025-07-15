module tanh_approx (
    input  signed [31:0] in,
    output reg    [7:0]  out  // Q8.8 signed fixed point
);
    always @(*) begin
        if (in <= -32) out = -8'd127;
        else if (in >= 32) out = 8'd127;
        else out = in[7:0]; // direct pass-through (approximation)
    end
endmodule
