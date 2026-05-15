`timescale 1ns/1ps

module tb_control_unit;
    reg  [5:0] opcode;
    wire       reg_dst, branch, mem_read, mem_to_reg, mem_write, alu_src, reg_write;
    wire [1:0] alu_op;

    control_unit dut (
        .opcode(opcode),
        .reg_dst(reg_dst), .branch(branch), .mem_read(mem_read),
        .mem_to_reg(mem_to_reg), .mem_write(mem_write), .alu_src(alu_src),
        .reg_write(reg_write), .alu_op(alu_op)
    );

    task expect_ctrl;
        input [255:0] name;
        input [5:0]   op;
        input         e_reg_dst, e_branch, e_mem_read, e_mem_to_reg;
        input         e_mem_write, e_alu_src, e_reg_write;
        input [1:0]   e_alu_op;
        begin
            opcode = op;
            #1;
            if (reg_dst !== e_reg_dst || branch !== e_branch || mem_read !== e_mem_read ||
                mem_to_reg !== e_mem_to_reg || mem_write !== e_mem_write ||
                alu_src !== e_alu_src || reg_write !== e_reg_write || alu_op !== e_alu_op) begin
                $display("FAIL %s: opcode=%b", name, op);
                $display("  got {%b,%b,%b,%b,%b,%b,%b,%b}",
                         reg_dst, alu_src, mem_to_reg, reg_write, mem_read, mem_write, branch, alu_op);
                $fatal(1);
            end
            $display("  PASS %s", name);
        end
    endtask

    initial begin
        $display("=== tb_control_unit ===");

        expect_ctrl("R_TYPE", 6'b000000,
                    1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10);
        expect_ctrl("LW", 6'b100011,
                    1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 2'b00);
        expect_ctrl("SW", 6'b101011,
                    1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 2'b00);
        expect_ctrl("BEQ", 6'b000100,
                    1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 2'b01);
        expect_ctrl("DEFAULT", 6'b111111,
                    1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 2'b00);

        $display("ALL PASS: tb_control_unit");
        $finish;
    end
endmodule
