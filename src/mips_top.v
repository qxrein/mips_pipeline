module mips_top (
    input         clk, rst,
    output [31:0] pc_out,
    output [31:0] instr_out,
    output [31:0] alu_result_out
);
    reg  [31:0] pc;
    wire [31:0] pc_plus4 = pc + 4;
    (* ram_style = "distributed" *) reg [31:0] instr_mem [0:255];
    wire [31:0] instr = instr_mem[pc[9:2]];

    always @(posedge clk)
        if (rst)
            pc <= 32'd0;
        else
            pc <= pc_plus4;

    // IF/ID
    wire [31:0] ifid_pc, ifid_instr;
    if_id_reg if_id (.clk(clk),.rst(rst),.pc_plus4_in(pc_plus4),.instr_in(instr),
                     .pc_plus4_out(ifid_pc),.instr_out(ifid_instr));

    // Decode fields
    wire [5:0] opcode = ifid_instr[31:26];
    wire [4:0] rs=ifid_instr[25:21], rt=ifid_instr[20:16], rd=ifid_instr[15:11];
    wire [31:0] imm = {{16{ifid_instr[15]}}, ifid_instr[15:0]};

    // Control
    wire reg_dst,branch,mem_read,mem_to_reg,mem_write,alu_src,reg_write;
    wire [1:0] alu_op;
    control_unit cu (.opcode(opcode),.reg_dst(reg_dst),.branch(branch),
        .mem_read(mem_read),.mem_to_reg(mem_to_reg),.mem_write(mem_write),
        .alu_src(alu_src),.reg_write(reg_write),.alu_op(alu_op));

    // WB signals
    wire        wb_reg_write, wb_mem_to_reg;
    wire [4:0]  wb_rd;
    wire [31:0] wb_alu_result, wb_read_data;
    wire [31:0] wb_data = wb_mem_to_reg ? wb_read_data : wb_alu_result;

    // Register file
    wire [31:0] rd1, rd2;
    register_file rf (.clk(clk),.we(wb_reg_write),.rs(rs),.rt(rt),.rd(wb_rd),
                      .wd(wb_data),.rd1(rd1),.rd2(rd2));

    // ID/EX
    wire [31:0] idex_pc, idex_rd1, idex_rd2, idex_imm;
    wire [4:0]  idex_rt, idex_rd;
    wire [8:0]  idex_ctrl;
    id_ex_reg id_ex (.clk(clk),.rst(rst),
        .pc_plus4_in(ifid_pc),.rd1_in(rd1),.rd2_in(rd2),.imm_in(imm),
        .rt_in(rt),.rd_in(rd),
        .ctrl_in({reg_dst,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op}),
        .pc_plus4_out(idex_pc),.rd1_out(idex_rd1),.rd2_out(idex_rd2),.imm_out(idex_imm),
        .rt_out(idex_rt),.rd_out(idex_rd),.ctrl_out(idex_ctrl));

    // EX
    wire [4:0]  ex_dest = idex_ctrl[8] ? idex_rd : idex_rt;
    wire [31:0] alu_b   = idex_ctrl[7] ? idex_imm : idex_rd2;
    wire [31:0] alu_result;
    wire        alu_zero;
    wire [2:0]  alu_ctrl = (idex_ctrl[1:0] == 2'b10) ? 3'b010 : 3'b110;
    alu alu0 (.a(idex_rd1),.b(alu_b),.alu_ctrl(alu_ctrl),
              .result(alu_result),.zero(alu_zero));

    // EX/MEM
    wire [31:0] exmem_alu, exmem_wd;
    wire        exmem_zero, exmem_branch, exmem_mem_read, exmem_mem_write;
    wire        exmem_mem_to_reg, exmem_reg_write;
    wire [4:0]  exmem_rd;
    ex_mem_reg ex_mem (.clk(clk),.rst(rst),
        .alu_result_in(alu_result),.wd_in(idex_rd2),
        .zero_in(alu_zero),.branch_in(idex_ctrl[2]),.mem_read_in(idex_ctrl[4]),
        .mem_write_in(idex_ctrl[3]),.mem_to_reg_in(idex_ctrl[6]),.reg_write_in(idex_ctrl[5]),
        .rd_in(ex_dest),
        .alu_result_out(exmem_alu),.wd_out(exmem_wd),
        .zero_out(exmem_zero),.branch_out(exmem_branch),.mem_read_out(exmem_mem_read),
        .mem_write_out(exmem_mem_write),.mem_to_reg_out(exmem_mem_to_reg),
        .reg_write_out(exmem_reg_write),.rd_out(exmem_rd));

    // MEM
    wire [31:0] mem_read_data;
    data_memory dmem (.clk(clk),.mem_write(exmem_mem_write),.mem_read(exmem_mem_read),
                      .addr(exmem_alu),.wd(exmem_wd),.rd(mem_read_data));

    // MEM/WB
    mem_wb_reg mem_wb (.clk(clk),.rst(rst),
        .read_data_in(mem_read_data),.alu_result_in(exmem_alu),
        .mem_to_reg_in(exmem_mem_to_reg),.reg_write_in(exmem_reg_write),.rd_in(exmem_rd),
        .read_data_out(wb_read_data),.alu_result_out(wb_alu_result),
        .mem_to_reg_out(wb_mem_to_reg),.reg_write_out(wb_reg_write),.rd_out(wb_rd));

    assign pc_out         = pc;
    assign instr_out      = ifid_instr;
    assign alu_result_out = wb_alu_result;
endmodule
