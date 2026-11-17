`timescale 1ps/1ps

module not_gate_tb();

    reg a_tb;
    wire y_tb;

    not_gate not_gate_tb (a_tb,y_tb);

    initial begin

       $dumpfile("sim/wave.vcd");
       $dumpvars(0, not_gate_tb);

        a_tb = 0;
        # 10 a_tb = 1;
        # 20 a_tb = 0;

    end

    
endmodule