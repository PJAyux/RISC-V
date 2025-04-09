module data_path (
    input clk,
    input rst,
    input[4:0] read_reg_num1,
    input[4:0] read_reg_num2,
    input[4:0] write_reg_num1,
    input[5:0] alu_control,
    input jump,bqeq_control,zero_flag,reg_dst,mem_to_reg,bne_control,
    input[31:0] imm_val,
    input[3:0] shamt,
    input lb,sw,bneq_control,blt_control,lui_control,
    input[31:0] imm_val_lui,
    input[31:0] imm_val_jump,
    input[31:0] return_address,
    input[340] read_data_addr_dm,
    output beq,bneq,bge,blt
);
    reg [31:0] pc_current;
    reg[31:0] pc_next_2;
    wire[31:0] instr;
    wire[31:0] ext_imm;
    wire[31:0] read_reg_data_2;
    wire[31:0] read_reg_data_1;
    wire[31:0] reg_write_dest;

    wire[31:0] reg_read_data_2;

    wire[31:0] pc_j,pc_beq,pc_bneq;
    wire bneq_control;
    wire[31:0] pc_2beq;
    wire[31:0] pc_2bneq;
    wire[31:0] read_data1;
    wire[31:0] read_data2;
    wire[31:0] read_data_addr_dm_2;
    wire[31:0] write_data_alu;
    wire[31:0] write_data_dm;
    wire[31:0] rd_addr;
    wire[31:0] data_out;
    wire[31:0] data_out_2_dm;

    register_file rfu(clk,rst,read_reg_num1,read_reg_num2,write_reg_num1,data_out,lb,lui_control,imm_val_lui,return_address,jump,read_data1,read_data2);
    alu alu_unit(read_data1,read_data2,alu_control,imm_val,shamt,write_data_alu);
    data_memory dmu(clk,rst,imm_val[4:0],data_out_2_dm,sw,imm_val[4:0],data_out);

    initial begin
        pc_current<=32'b0;
    end
    always @(posedge clk ) begin
        pc_current<=pc_next;
    end
    assign pc2=pc_current+4;
    
endmodule