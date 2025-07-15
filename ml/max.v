module argmax #(
    parameter N = 8
)(
    input      [31:0] in [0:N-1],
    output reg [2:0]  max_index,
    output reg [31:0] max_value
);
    integer i;
    always @(*) begin
        max_value = in[0];
        max_index = 0;
        for (i = 1; i < N; i = i + 1) begin
            if (in[i] > max_value) begin
                max_value = in[i];
                max_index = i[2:0];
            end
        end
    end
endmodule
