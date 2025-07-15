module sigmoid_approx (
    input  signed [31:0] in,
    output reg    [7:0]  out  // Q8.8 fixed point output (0–255 maps to 0.0–1.0)
);

    always @(*) begin
        if (in <= -32)        // ~ -4.0
            out = 8'd0;
        else if (in >= 32)    // ~ +4.0
            out = 8'd255;
        else
            out = 8'd128 + (in <<< 2); // 0.5 + x/8
    end
endmodule
