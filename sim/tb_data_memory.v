`timescale 1ns/1ps

module tb_data_memory;
    reg         clk, mem_write, mem_read;
    reg  [31:0] addr, wd;
    wire [31:0] rd;

    data_memory dut (
        .clk(clk), .mem_write(mem_write), .mem_read(mem_read),
        .addr(addr), .wd(wd), .rd(rd)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        integer i;
        $display("=== tb_data_memory ===");

        mem_write = 0;
        mem_read  = 0;
        addr = 0;
        wd   = 0;

        for (i = 0; i < 256; i = i + 1)
            dut.mem[i] = 32'd0;

        @(negedge clk);
        mem_write = 1;
        mem_read  = 0;
        addr      = 32'h0000_0010;
        wd        = 32'hCAFE_BABE;
        @(negedge clk);
        mem_write = 0;

        mem_read = 1;
        #1;
        if (rd !== 32'hCAFE_BABE) begin
            $display("FAIL read after write: rd=%h", rd);
            $fatal(1);
        end
        $display("  PASS write/read word 4");

        mem_read = 0;
        #1;
        if (rd !== 32'd0) begin
            $display("FAIL read when mem_read=0: rd=%h", rd);
            $fatal(1);
        end
        $display("  PASS read disabled drives zero");

        $display("ALL PASS: tb_data_memory");
        $finish;
    end
endmodule
