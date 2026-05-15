module data_memory (
    input         clk, mem_write, mem_read,
    input  [31:0] addr, wd,
    output [31:0] rd
);
    reg [31:0] mem [0:255];
    always @(posedge clk)
        if (mem_write) mem[addr[9:2]] <= wd;
    assign rd = mem_read ? mem[addr[9:2]] : 32'd0;
endmodule
