`timescale 1ns/1ps

module tb_register_file;
    reg         clk, we;
    reg  [4:0]  rs, rt, rd;
    reg  [31:0] wd;
    wire [31:0] rd1, rd2;

    register_file dut (
        .clk(clk), .we(we), .rs(rs), .rt(rt), .rd(rd), .wd(wd),
        .rd1(rd1), .rd2(rd2)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    task write_reg;
        input [4:0]  r;
        input [31:0] data;
        begin
            @(negedge clk);
            we = 1; rd = r; wd = data;
            @(negedge clk);
            we = 0;
        end
    endtask

    task expect_read;
        input [255:0] name;
        input [4:0]   r1, r2;
        input [31:0]  e1, e2;
        begin
            rs = r1;
            rt = r2;
            #1;
            if (rd1 !== e1 || rd2 !== e2) begin
                $display("FAIL %s: rd1=%h rd2=%h expected %h %h", name, rd1, rd2, e1, e2);
                $fatal(1);
            end
            $display("  PASS %s", name);
        end
    endtask

    initial begin
        $display("=== tb_register_file ===");
        we = 0;
        rs = 0; rt = 0;

        expect_read("RESET_ZERO", 5'd0, 5'd1, 32'd0, 32'd0);

        write_reg(5'd3, 32'hDEAD_BEEF);
        write_reg(5'd7, 32'h1234_5678);

        expect_read("READ_WRITTEN", 5'd3, 5'd7, 32'hDEAD_BEEF, 32'h1234_5678);

        write_reg(5'd0, 32'hFFFF_FFFF);
        expect_read("WRITE_R0_IGNORED", 5'd0, 5'd3, 32'd0, 32'hDEAD_BEEF);

        $display("ALL PASS: tb_register_file");
        $finish;
    end
endmodule
