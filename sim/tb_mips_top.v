`timescale 1ns/1ps

// System-level directed test for the 5-stage pipeline.
// Program (no forwarding): LW $1,0($0); 4x NOP; ADD $2,$1,$1
// Expects $1=42 and $2=84 after pipeline drains.

module tb_mips_top;
    reg         clk, rst;
    wire [31:0] pc_out, instr_out, alu_result_out;

    localparam WORD_0 = 0;
    localparam WORD_1 = 1;
    localparam WORD_2 = 2;
    localparam WORD_3 = 3;
    localparam WORD_4 = 4;
    localparam WORD_5 = 5;

    // MIPS encodings used by this RTL
    localparam INSTR_LW  = 32'h8C01_0000; // lw $1, 0($0)
    localparam INSTR_NOP = 32'h0000_0000; // sll $0, $0, 0
    localparam INSTR_ADD = 32'h0021_1020; // add $2, $1, $1  (R-type, alu_op=add)

    mips_top dut (
        .clk(clk), .rst(rst),
        .pc_out(pc_out), .instr_out(instr_out), .alu_result_out(alu_result_out)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        integer i;

        $display("=== tb_mips_top ===");

        for (i = 0; i < 256; i = i + 1)
            dut.instr_mem[i] = INSTR_NOP;

        dut.instr_mem[WORD_0] = INSTR_LW;
        dut.instr_mem[WORD_1] = INSTR_NOP;
        dut.instr_mem[WORD_2] = INSTR_NOP;
        dut.instr_mem[WORD_3] = INSTR_NOP;
        dut.instr_mem[WORD_4] = INSTR_NOP;
        dut.instr_mem[WORD_5] = INSTR_ADD;

        dut.dmem.mem[0] = 32'd42;

        rst = 1;
        repeat (3) @(negedge clk);
        rst = 0;

        // LW@0 WB ~cycle 5, four NOPs, ADD@20 WB ~cycle 10; extra margin
        repeat (24) @(negedge clk);

        if (dut.rf.regs[1] !== 32'd42) begin
            $display("FAIL $1: got %0d expected 42", dut.rf.regs[1]);
            $display("  pc=%h instr_id=%h alu_wb=%h", pc_out, instr_out, alu_result_out);
            $fatal(1);
        end
        $display("  PASS $1 = 42 (load word)");

        if (dut.rf.regs[2] !== 32'd84) begin
            $display("FAIL $2: got %0d expected 84", dut.rf.regs[2]);
            $display("  pc=%h instr_id=%h alu_wb=%h", pc_out, instr_out, alu_result_out);
            $fatal(1);
        end
        $display("  PASS $2 = 84 (add $1, $1)");

        if (dut.rf.regs[0] !== 32'd0) begin
            $display("FAIL $0 not zero: %h", dut.rf.regs[0]);
            $fatal(1);
        end
        $display("  PASS $0 remains 0");

        $display("ALL PASS: tb_mips_top");
        $finish;
    end

    initial begin
        $dumpfile("waves/mips_top.vcd");
        $dumpvars(0, tb_mips_top);
    end
endmodule
