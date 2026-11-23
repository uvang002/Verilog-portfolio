`timescale 1ps / 1ps

module xor_gate_tb;
    reg a_tb;
    reg b_tb;
    wire y_tb;

    xor_gate dut (
        .a(a_tb),
        .b(b_tb),
        .y(y_tb)
    );

    initial begin

        $dumpfile("sim/wave.vcd");
        $dumpvars(0, xor_gate_tb);

        a_tb = 0;
        b_tb = 0;
        #10 a_tb = 0;
            b_tb = 1;
        #10 a_tb = 1;
            b_tb = 0;
        #10 a_tb = 1;
            b_tb = 1;

        #10;
        $finish;
    end

endmodule
