module dot_product_4 (
    input clk,
    input rst,
    input valid,
    input signed [7:0] A[0:3],
    input signed [7:0] B[0:3],
    output signed [31:0] result
);

    wire signed [31:0] mac_out [0:3];

    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : MACS
            int8_mac mac (
                .clk(clk),
                .rst(rst),
                .valid(valid),
                .A(A[i]),
                .B(B[i]),
                .result(mac_out[i])
            );
        end
    endgenerate

    assign result = mac_out[0] + mac_out[1] + mac_out[2] + mac_out[3];

endmodule
