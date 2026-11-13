`timescale 1ns/1ns

module tb_and_or_not_gate;

    reg         clk;
    reg  [4:0]  io_button;
    reg         rst_n;
    wire [7:0]  led;
    wire [7:0]  io_segment;
    wire [3:0]  io_select;

    top_module dut (
        .clk(clk),
        .io_button(io_button),
        .rst_n(rst_n),
        .led(led),
        .io_segment(io_segment),
        .io_select(io_select)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("and_or_not_gate.vcd");
        $dumpvars(0, tb_and_or_not_gate);
        $monitor("time=%0t rst_n=%b io_button=%b", $time, rst_n, io_button);

        clk = 1'b0;
        rst_n = 1'b0;
        io_button = 5'b00000; #10;
        rst_n = 1'b1;
        io_button = 5'b00101; #10;
        io_button = 5'b11000; #10;

        rst_n = 1'b0; #25;

        $finish;
    end

endmodule
