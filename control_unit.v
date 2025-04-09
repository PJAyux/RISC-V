module control_unit (
    input reset,
    input [6:0] funct7,
    input [2:0] funct3,
    input [6:0] opcode,
    output reg [5:0] alu_control,
    output reg lb,
    output reg mem_to_reg,
    output reg bneq_control,
    output reg bg eq_control,
    output reg blt_control,
    output reg jump,
    output reg sw,
    output reg lui_control
    
);

    always@(reset)begin
        if(reset)alu_control=0;
    end

    always@(funct3 or funct7 or opcode)begin
        if(opcode==7'b0110011)begin
            mem_to_reg=0;
            bqeq_control=0;
            bneq_control=0;
            bgeq_control=0;
            blt_control=0;
            jump=0;
            lui_control=0;

            case (funct3)
                3'b000: begin
                    if(funct7==0)alu_control=6'b000001; //add
                    else if (funct7==64)alu_control=6'b00010; //sub
                end

                //shift left logical
                3'b001:begin
                    if(funct7==0)alu_control=6'b000011;
                end

                //SET less than
                3'b010:begin
                    if(funct7==0)alu_control=6'b000100;
                end

                //SET less than unsigned
                3'b011:begin
                    if(funct7==0)alu_control=6'b000101;
                end

                //xo
                3'b100:begin
                    if(funct7==0)alu_control=6'b000110;
                end

                //shift right logical and airthematic
                3'b101:begin
                    if(funct7==0)alu_control=6'b000111;
                    else if(funct7==64)alu_control=6'b001000;
                end

                //or 
                3'b110:begin
                    if(funct7==0)alu_control=6'b001001;
                end

                //and
                3'b111:begin
                    if(funct7==0)alu_control=6'b001010;
                end
            endcase


            ////i type
        end
    end



    
endmodule