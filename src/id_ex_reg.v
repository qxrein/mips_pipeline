module id_ex_reg (
    input         clk, rst,
    input  [31:0] pc_plus4_in, rd1_in, rd2_in, imm_in,
    input  [4:0]  rt_in, rd_in,
    input  [8:0]  ctrl_in,
    output reg [31:0] pc_plus4_out, rd1_out, rd2_out, imm_out,
    output reg [4:0]  rt_out, rd_out,
    output reg [8:0]  ctrl_out
);
    always @(posedge clk)
        if (rst)
            {pc_plus4_out, rd1_out, rd2_out, imm_out, rt_out, rd_out, ctrl_out} <= 0;
        else
            {pc_plus4_out, rd1_out, rd2_out, imm_out, rt_out, rd_out, ctrl_out} <=
                {pc_plus4_in, rd1_in, rd2_in, imm_in, rt_in, rd_in, ctrl_in};
endmodule
