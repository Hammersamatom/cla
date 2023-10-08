module cla_tb ();
    // Stage 1 regs
    reg r_CIN = 0;
    reg [7:0] r_ADD_a = 0;
    reg [7:0] r_ADD_b = 0;

    wire w_COUT;
    wire [7:0] w_RES;

    cla #(.BITS(8)) carry
    (
        .c_in(r_CIN),
        .a_in(r_ADD_a),
        .b_in(r_ADD_b),
        .c_out(w_COUT),
        .s_out(w_RES)
    );

    initial begin
        $dumpfile ("cla_tb.vcd");
        $dumpvars (0, cla_tb);
        r_CIN = 1'b0;
        r_ADD_a = 8'b00000000;
        r_ADD_b = 8'b00000000;
        #1;
        r_CIN = 1'b1;
        r_ADD_a = 0;
        r_ADD_b = 0;
        #1;
        r_CIN = 1;
        r_ADD_a = 12;
        r_ADD_b = 3;
        #1;
        r_CIN = 1;
        r_ADD_a = 7;
        r_ADD_b = 201;
        #1;
        r_CIN = 1;
        r_ADD_a = 123;
        r_ADD_b = 124;
        #1;
        r_CIN = 1;
        r_ADD_a = 133;
        r_ADD_b = 27;
        #1;
        r_CIN = 0;
        r_ADD_a = 251;
        r_ADD_b = 4;
        #1;
        r_CIN = 0;
        r_ADD_a = 8'b01010101;
        r_ADD_b = 8'b10101010;
        #1;
        r_CIN = 0;
        r_ADD_a = 8'b11110000;
        r_ADD_b = 8'b00001111;
        #1;
    end


endmodule