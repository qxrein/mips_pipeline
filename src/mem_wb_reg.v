module mem_wb_reg (
    input         clk, rst,
    input  [31:0] read_data_in, alu_result_in,
    input         mem_to_reg_in, reg_write_in,
    input  [4:0]  rd_in,
    output reg [31:0] read_data_out, alu_result_out,
    output reg        mem_to_reg_out, reg_write_out,
    output reg [4:0]  rd_out
);
    always @(posedge clk)
        if (rst)
            {read_data_out, alu_result_out, mem_to_reg_out, reg_write_out, rd_out} <= 0;
        else
            {read_data_out, alu_result_out, mem_to_reg_out, reg_write_out, rd_out} <=
                {read_data_in, alu_result_in, mem_to_reg_in, reg_write_in, rd_in};
endmodule
