module control_unit (
    input  [5:0] opcode,
    output reg reg_dst, branch, mem_read, mem_to_reg,
    output reg mem_write, alu_src, reg_write,
    output reg [1:0] alu_op
);
    always @(*) begin
        case (opcode)
            6'b000000: {reg_dst,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op} = 9'b100100010; // R-type
            6'b100011: {reg_dst,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op} = 9'b011110000; // LW
            6'b101011: {reg_dst,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op} = 9'b000010000; // SW
            6'b000100: {reg_dst,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op} = 9'b000000101; // BEQ
            default:   {reg_dst,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op} = 9'b000000000;
        endcase
    end
endmodule
