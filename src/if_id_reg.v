module if_id_reg (
    input         clk, rst,
    input  [31:0] pc_plus4_in, instr_in,
    output reg [31:0] pc_plus4_out, instr_out
);
    always @(posedge clk)
        if (rst)
            {pc_plus4_out, instr_out} <= 64'd0;
        else
            {pc_plus4_out, instr_out} <= {pc_plus4_in, instr_in};
endmodule
