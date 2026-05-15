`timescale 1ns/1ps

module tb_alu;
    reg  [31:0] a, b;
    reg  [2:0]  alu_ctrl;
    wire [31:0] result;
    wire        zero;

    alu dut (.a(a), .b(b), .alu_ctrl(alu_ctrl), .result(result), .zero(zero));

    task check;
        input [255:0] name;
        input [31:0]  exp_result;
        input         exp_zero;
        begin
            #1;
            if (result !== exp_result || zero !== exp_zero) begin
                $display("FAIL %s: got result=%h zero=%b expected result=%h zero=%b",
                         name, result, zero, exp_result, exp_zero);
                $fatal(1);
            end
            $display("  PASS %s", name);
        end
    endtask

    initial begin
        $display("=== tb_alu ===");
        a = 32'h0000_000A;
        b = 32'h0000_0003;

        alu_ctrl = 3'b010; check("ADD", 32'd13, 1'b0);
        alu_ctrl = 3'b110; check("SUB", 32'd7,  1'b0);
        alu_ctrl = 3'b000; check("AND", 32'h2,  1'b0);
        alu_ctrl = 3'b001; check("OR",  32'hB,  1'b0);
        alu_ctrl = 3'b111; check("SLT_FALSE", 32'd0, 1'b1);

        a = 32'd3;
        b = 32'd10;
        alu_ctrl = 3'b111; check("SLT_TRUE", 32'd1, 1'b0);

        a = 32'd5;
        b = 32'd5;
        alu_ctrl = 3'b110; check("SUB_ZERO", 32'd0, 1'b1);

        $display("ALL PASS: tb_alu");
        $finish;
    end
endmodule
