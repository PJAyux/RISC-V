module pipe_ex2 (Zout,rs1,rs2,rd,func,addr,clk1,clk2
);

input [3:0]rs1,rs2,rd,func;
input [7:0]addr;
input write,clk,clk1,clk2;
output [15:0] Zout;

reg [15:0] L12_A,L12_B,L23_z ,L34_Z;
reg [3:0] L12_rd,L12_func,L23_rd;
reg [7:0] L12_addr,L23_addr,L34_addr;

reg [15:0] regbank[0:15];
reg[15:0] mem[0:255];

assign Zout=L34_Z;

// first register pipe layer
always@(posedge clk1)begin
    L12_A <= #2 regbank[rs1];
    L12_B <= #2 regbank[rs2];
    L12_rd <= #2 rd;
    L12_func <= #2 func;
    L12_addr <= #2 addr;
end

//second block of alu 23
always@(posedge clk1)begin
    case(func)
    0:L23_z <= #2 L12_A +L12_B;
    1:L23_z <= #2 L12_A -L12_B;
    2:L23_z <= #2 L12_A * L12_B;
    3:L23_z <= #2 L12_A;
    4:L23_z <= #2 L12_B;
    5:L23_z <= #2 L12_A &L12_B;
    6:L23_z <= #2 L12_A  | L12_B;
    7:L23_z <= #2 L12_A ^L12_B;
    8:L23_z <= #2 ~L12_A ;
    9:L23_z <= #2 ~L12_B;
    10:L23_z <= #2 L12_A >>1;
    11:L23_z <= #2 L12_A<<1;
    default:L23_z<=#2 16'hxxxx;
    endcase
    L23_rd<=#2 L12_rd;
    L23_addr<=#2 L12_addr;
end
//third layer writeback 34
always@(posedge clk1)begin
    regbank[L23_rd]<=#2 L23_z;
    L34_Z <= #2 L23_z;
    L34_addr <=#2 L23_addr;
end

always@(clk2)begin
    mem[L34_addr]<=#2 L34_Z;
end
    
endmodule
