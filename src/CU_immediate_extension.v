module CU_immediate_extension(
    input [1:0] imm_src;
    input [15:0] instruction;
    output [15:0] immediate;
);

    always(instruction){
        case(imm_src)
            2'b00: begin // signal extend on 8-bit given immediate
                immediate[0:2] = instruction[2:4];
                immediate[3:7] = instruction[8:12];
                N_to_16_sig_extend#(.N(8)) sig_ext(.in(immediate[0:7]), .out(immediate));
                
            end
            2'b01: begin // zero extend on 8-bit given immediate
                immediate[0:2] = instruction[2:4];
                immediate[3:7] = instruction[8:12];
                N_to_16_zero_extend#(.N(8)) sig_ext(.in(immediate[0:7]), .out(immediate));
            end
            2'b11: begin // zero extend on 11-bit given immediate
                immediate[0:2] = instruction[2:4];
                immediate[3:7] = instruction[8:12];
                immediate[8:10] = instruction[5:7];
                N_to_16_zero_extend#(.N(11)) sig_ext(.in(immediate[0:7]), .out(immediate));
            end
            default: immediate[15:0] = 16'b0000000000000000;
        endcase
    }

endmodule