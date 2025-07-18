#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_0000014e5db72ce0 .scope module, "pipe_ex2" "pipe_ex2" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 16 "Zout";
    .port_info 1 /INPUT 4 "rs1";
    .port_info 2 /INPUT 4 "rs2";
    .port_info 3 /INPUT 4 "rd";
    .port_info 4 /INPUT 4 "func";
    .port_info 5 /INPUT 8 "addr";
    .port_info 6 /INPUT 1 "clk1";
    .port_info 7 /INPUT 1 "clk2";
L_0000014e5db5b240 .functor BUFZ 16, v0000014e5dbf9d90_0, C4<0000000000000000>, C4<0000000000000000>, C4<0000000000000000>;
v0000014e5db5ab40_0 .var "L12_A", 15 0;
v0000014e5db5b1a0_0 .var "L12_B", 15 0;
v0000014e5db72e70_0 .var "L12_addr", 7 0;
v0000014e5db72f10_0 .var "L12_func", 3 0;
v0000014e5db72fb0_0 .var "L12_rd", 3 0;
v0000014e5db73050_0 .var "L23_addr", 7 0;
v0000014e5dbf9c50_0 .var "L23_rd", 3 0;
v0000014e5dbf9cf0_0 .var "L23_z", 15 0;
v0000014e5dbf9d90_0 .var "L34_Z", 15 0;
v0000014e5dbf9e30_0 .var "L34_addr", 7 0;
v0000014e5dbf9ed0_0 .net "Zout", 15 0, L_0000014e5db5b240;  1 drivers
o0000014e5dbaf1c8 .functor BUFZ 8, C4<zzzzzzzz>; HiZ drive
v0000014e5dba4510_0 .net "addr", 7 0, o0000014e5dbaf1c8;  0 drivers
o0000014e5dbaf1f8 .functor BUFZ 1, C4<z>; HiZ drive
v0000014e5dba45b0_0 .net "clk", 0 0, o0000014e5dbaf1f8;  0 drivers
o0000014e5dbaf228 .functor BUFZ 1, C4<z>; HiZ drive
v0000014e5dba4650_0 .net "clk1", 0 0, o0000014e5dbaf228;  0 drivers
o0000014e5dbaf258 .functor BUFZ 1, C4<z>; HiZ drive
v0000014e5dba46f0_0 .net "clk2", 0 0, o0000014e5dbaf258;  0 drivers
o0000014e5dbaf288 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0000014e5dba3a10_0 .net "func", 3 0, o0000014e5dbaf288;  0 drivers
v0000014e5dba3790 .array "mem", 255 0, 15 0;
o0000014e5dbaf2b8 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0000014e5dba4050_0 .net "rd", 3 0, o0000014e5dbaf2b8;  0 drivers
v0000014e5dba3510 .array "regbank", 15 0, 15 0;
o0000014e5dbaf2e8 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0000014e5dba3ab0_0 .net "rs1", 3 0, o0000014e5dbaf2e8;  0 drivers
o0000014e5dbaf318 .functor BUFZ 4, C4<zzzz>; HiZ drive
v0000014e5dba3b50_0 .net "rs2", 3 0, o0000014e5dbaf318;  0 drivers
o0000014e5dbaf348 .functor BUFZ 1, C4<z>; HiZ drive
v0000014e5dba31f0_0 .net "write", 0 0, o0000014e5dbaf348;  0 drivers
E_0000014e5db96e00 .event anyedge, v0000014e5dba46f0_0;
E_0000014e5db968c0 .event posedge, v0000014e5dba4650_0;
    .scope S_0000014e5db72ce0;
T_0 ;
    %wait E_0000014e5db968c0;
    %load/vec4 v0000014e5dba3ab0_0;
    %pad/u 6;
    %ix/vec4 4;
    %load/vec4a v0000014e5dba3510, 4;
    %assign/vec4 v0000014e5db5ab40_0, 2;
    %load/vec4 v0000014e5dba3b50_0;
    %pad/u 6;
    %ix/vec4 4;
    %load/vec4a v0000014e5dba3510, 4;
    %assign/vec4 v0000014e5db5b1a0_0, 2;
    %load/vec4 v0000014e5dba4050_0;
    %assign/vec4 v0000014e5db72fb0_0, 2;
    %load/vec4 v0000014e5dba3a10_0;
    %assign/vec4 v0000014e5db72f10_0, 2;
    %load/vec4 v0000014e5dba4510_0;
    %assign/vec4 v0000014e5db72e70_0, 2;
    %jmp T_0;
    .thread T_0;
    .scope S_0000014e5db72ce0;
T_1 ;
    %wait E_0000014e5db968c0;
    %load/vec4 v0000014e5dba3a10_0;
    %dup/vec4;
    %pushi/vec4 0, 0, 4;
    %cmp/u;
    %jmp/1 T_1.0, 6;
    %dup/vec4;
    %pushi/vec4 1, 0, 4;
    %cmp/u;
    %jmp/1 T_1.1, 6;
    %dup/vec4;
    %pushi/vec4 2, 0, 4;
    %cmp/u;
    %jmp/1 T_1.2, 6;
    %dup/vec4;
    %pushi/vec4 3, 0, 4;
    %cmp/u;
    %jmp/1 T_1.3, 6;
    %dup/vec4;
    %pushi/vec4 4, 0, 4;
    %cmp/u;
    %jmp/1 T_1.4, 6;
    %dup/vec4;
    %pushi/vec4 5, 0, 4;
    %cmp/u;
    %jmp/1 T_1.5, 6;
    %dup/vec4;
    %pushi/vec4 6, 0, 4;
    %cmp/u;
    %jmp/1 T_1.6, 6;
    %dup/vec4;
    %pushi/vec4 7, 0, 4;
    %cmp/u;
    %jmp/1 T_1.7, 6;
    %dup/vec4;
    %pushi/vec4 8, 0, 4;
    %cmp/u;
    %jmp/1 T_1.8, 6;
    %dup/vec4;
    %pushi/vec4 9, 0, 4;
    %cmp/u;
    %jmp/1 T_1.9, 6;
    %dup/vec4;
    %pushi/vec4 10, 0, 4;
    %cmp/u;
    %jmp/1 T_1.10, 6;
    %dup/vec4;
    %pushi/vec4 11, 0, 4;
    %cmp/u;
    %jmp/1 T_1.11, 6;
    %pushi/vec4 65535, 65535, 16;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.0 ;
    %load/vec4 v0000014e5db5ab40_0;
    %load/vec4 v0000014e5db5b1a0_0;
    %add;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.1 ;
    %load/vec4 v0000014e5db5ab40_0;
    %load/vec4 v0000014e5db5b1a0_0;
    %sub;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.2 ;
    %load/vec4 v0000014e5db5ab40_0;
    %load/vec4 v0000014e5db5b1a0_0;
    %mul;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.3 ;
    %load/vec4 v0000014e5db5ab40_0;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.4 ;
    %load/vec4 v0000014e5db5b1a0_0;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.5 ;
    %load/vec4 v0000014e5db5ab40_0;
    %load/vec4 v0000014e5db5b1a0_0;
    %and;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.6 ;
    %load/vec4 v0000014e5db5ab40_0;
    %load/vec4 v0000014e5db5b1a0_0;
    %or;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.7 ;
    %load/vec4 v0000014e5db5ab40_0;
    %load/vec4 v0000014e5db5b1a0_0;
    %xor;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.8 ;
    %load/vec4 v0000014e5db5ab40_0;
    %inv;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.9 ;
    %load/vec4 v0000014e5db5b1a0_0;
    %inv;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.10 ;
    %load/vec4 v0000014e5db5ab40_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftr 4;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.11 ;
    %load/vec4 v0000014e5db5ab40_0;
    %ix/load 4, 1, 0;
    %flag_set/imm 4, 0;
    %shiftl 4;
    %assign/vec4 v0000014e5dbf9cf0_0, 2;
    %jmp T_1.13;
T_1.13 ;
    %pop/vec4 1;
    %load/vec4 v0000014e5db72fb0_0;
    %assign/vec4 v0000014e5dbf9c50_0, 2;
    %load/vec4 v0000014e5db72e70_0;
    %assign/vec4 v0000014e5db73050_0, 2;
    %jmp T_1;
    .thread T_1;
    .scope S_0000014e5db72ce0;
T_2 ;
    %wait E_0000014e5db968c0;
    %load/vec4 v0000014e5dbf9cf0_0;
    %load/vec4 v0000014e5dbf9c50_0;
    %pad/u 6;
    %ix/vec4 3;
    %ix/load 4, 2, 0; Constant delay
    %assign/vec4/a/d v0000014e5dba3510, 0, 4;
    %load/vec4 v0000014e5dbf9cf0_0;
    %assign/vec4 v0000014e5dbf9d90_0, 2;
    %load/vec4 v0000014e5db73050_0;
    %assign/vec4 v0000014e5dbf9e30_0, 2;
    %jmp T_2;
    .thread T_2;
    .scope S_0000014e5db72ce0;
T_3 ;
    %wait E_0000014e5db96e00;
    %load/vec4 v0000014e5dbf9d90_0;
    %load/vec4 v0000014e5dbf9e30_0;
    %pad/u 10;
    %ix/vec4 3;
    %ix/load 4, 2, 0; Constant delay
    %assign/vec4/a/d v0000014e5dba3790, 0, 4;
    %jmp T_3;
    .thread T_3, $push;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "pipe_ex2.v";
