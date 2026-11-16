`timescale 1ns/1ps

module tb_and_or_not_gate;

    reg  [4:0] io_button;
    wire [7:0] led;

    // Device Under Test (DUT)
    and_or_not_gate dut (
        .io_button(io_button),
        .led(led)
    );

    initial begin
        // Generate waveform file
       $dumpfile("sim/wave.vcd");
       $dumpvars(0, tb_and_or_not_gate);

        $display("Time\tButtons\t\tLEDs");
        $monitor("%0t\t%b\t%b", $time, io_button, led);

        // Test 1: all buttons released
        io_button = 5'b00000;
        #10;

        // Test 2: button[0] pressed
        io_button = 5'b00001;
        #10;

        // Test 3: button[2] pressed
        io_button = 5'b00100;
        #10;

        // Test 4: button[0] and button[2] pressed
        io_button = 5'b00101;
        #10;

        // Test 5: button[3] pressed
        io_button = 5'b01000;
        #10;

        // Test 6: button[4] pressed
        io_button = 5'b10000;
        #10;

        // Test 7: button[1] pressed
        io_button = 5'b00010;
        #10;

        // Test 8: all buttons pressed
        io_button = 5'b11111;
        #10;

        $finish;
    end

endmodule