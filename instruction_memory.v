module instruction_memory (
    input clk,
    input[31:0] pc,
    input reset,
    output [31:0] instruction_code
);


/// here set of instrutions is taken from user ...
///pre loaded the set of instructions to be done by microprocessor

    reg[7:0]memory [1:0];

    assign instruction_code={memory[pc+3],memory[pc+2],memory[pc+1],memory[pc]};

    always @(posedge clk ) begin
        if(reset==1)begin
            ///add
            memory[3]=8'h00;
            memory[2]=8'h94;
            memory[1]=8'h03;
            memory[0]=8'h33;
            ///sub
            memory[3]=8'h80;
            memory[2]=8'h01;
            memory[1]=8'h00;
            memory[0]=8'h33;
        end
    end
    
endmodule