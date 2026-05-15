module ex_mem_reg (
    input         clk, rst,
    input  [31:0] alu_result_in, wd_in,
    input         zero_in, branch_in, mem_read_in, mem_write_in, mem_to_reg_in, reg_write_in,
    input  [4:0]  rd_in,
    output reg [31:0] alu_result_out, wd_out,
    output reg        zero_out, branch_out, mem_read_out, mem_write_out, mem_to_reg_out, reg_write_out,
    output reg [4:0]  rd_out
);
    always @(posedge clk)
        if (rst)
            {alu_result_out, wd_out, zero_out, branch_out, mem_read_out, mem_write_out,
             mem_to_reg_out, reg_write_out, rd_out} <= 0;
        else
            {alu_result_out, wd_out, zero_out, branch_out, mem_read_out, mem_write_out,
             mem_to_reg_out, reg_write_out, rd_out} <=
                {alu_result_in, wd_in, zero_in, branch_in, mem_read_in, mem_write_in,
                 mem_to_reg_in, reg_write_in, rd_in};
endmodule
