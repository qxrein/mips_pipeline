module register_file (
    input         clk, we,
    input  [4:0]  rs, rt, rd,
    input  [31:0] wd,
    output [31:0] rd1, rd2
);
    reg [31:0] regs [0:31];
    integer i;
    initial for (i = 0; i < 32; i = i+1) regs[i] = 0;

    always @(posedge clk)
        if (we && rd != 5'd0) regs[rd] <= wd;

    assign rd1 = regs[rs];
    assign rd2 = regs[rt];
endmodule
