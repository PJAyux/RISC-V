module int8_mac (
    input clk,
    input rst,          // Active-high synchronous reset
    input valid,        // When high, performs MAC operation
    input signed [7:0] A, // INT8 input A
    input signed [7:0] B, // INT8 input B
    output reg signed [31:0] result // Accumulated output
);

    wire signed [15:0] mult_result;
    assign mult_result = A * B;

    always @(posedge clk) begin
        if (rst)
            result <= 0;
        else if (valid)
            result <= result + mult_result;
    end

endmodule
