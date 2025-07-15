module matrix_mult_4x4 (
    input clk,
    input rst,
    input valid,
    input signed [7:0] A[0:3][0:3], // A: 4x4
    input signed [7:0] B[0:3][0:3], // B: 4x4
    output signed [31:0] C[0:3][0:3] // C: 4x4
);
    genvar m, n, k;

    // Transpose B for easy column access
    wire signed [7:0] B_T[0:3][0:3];
    generate
        for (m = 0; m < 4; m = m + 1)
            for (n = 0; n < 4; n = n + 1)
                assign B_T[n][m] = B[m][n];
    endgenerate

    // Generate 4x4 dot product units
    generate
        for (m = 0; m < 4; m = m + 1) begin : ROWS
            for (n = 0; n < 4; n = n + 1) begin : COLS
                dot_product_4 dp (
                    .clk(clk),
                    .rst(rst),
                    .valid(valid),
                    .A(A[m]),
                    .B(B_T[n]),
                    .result(C[m][n])
                );
            end
        end
    endgenerate

endmodule
