`timescale 1ns/1ps

module tb_if_id_reg;
    reg         clk, rst;
    reg  [31:0] pc_plus4_in, instr_in;
    wire [31:0] pc_plus4_out, instr_out;

    if_id_reg dut (
        .clk(clk), .rst(rst),
        .pc_plus4_in(pc_plus4_in), .instr_in(instr_in),
        .pc_plus4_out(pc_plus4_out), .instr_out(instr_out)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $display("=== tb_if_id_reg ===");
        rst = 1;
        pc_plus4_in = 0;
        instr_in    = 0;

        @(negedge clk);
        rst = 0;

        @(negedge clk);
        pc_plus4_in = 32'h0000_0004;
        instr_in    = 32'h8C01_0000;

        @(posedge clk);
        #1;
        if (pc_plus4_out !== 32'h4 || instr_out !== 32'h8C01_0000) begin
            $display("FAIL capture: pc+4=%h instr=%h", pc_plus4_out, instr_out);
            $fatal(1);
        end
        $display("  PASS capture");

        @(negedge clk);
        rst = 1;
        @(posedge clk);
        #1;
        if (pc_plus4_out !== 0 || instr_out !== 0) begin
            $display("FAIL sync reset: pc+4=%h instr=%h", pc_plus4_out, instr_out);
            $fatal(1);
        end
        $display("  PASS synchronous reset");

        $display("ALL PASS: tb_if_id_reg");
        $finish;
    end
endmodule
