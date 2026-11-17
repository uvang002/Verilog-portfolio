`timescale 1ps / 1ps

module top_module_tb;
    reg a_tb;
    wire y_tb;

    top_module dut (
        .a(a_tb),
        .y(y_tb)
    );

    initial begin
        $dumpfile("sim/wave.vcd");
        $dumpvars(0, top_module_tb);

        a_tb = 0;
        #10 a_tb = 1;
        #10 a_tb = 0;

        #10;
        $finish;
    end

endmodule