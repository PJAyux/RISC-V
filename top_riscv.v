module top_riscv;







assign imm_val_top={{20{instruction_out[31]}},instruction_out[31:21]};
assign imm_val_branch_top={{20{instruction_out[31]}},instruction_out[30:25],instruction_out[11:8],instruction_out[7]};
assign imm_val_lui={{10{instruction_out[31]}},instruction_out[31:12]};
assign imm_val=imm_val_top;

    
endmodule