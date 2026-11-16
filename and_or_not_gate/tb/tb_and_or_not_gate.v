`timescale 1ns/1ns

module tb_and_or_not_gate;

    reg [4:0] io_button;
    reg [7:0] expected_led;
    wire [7:0] led;
    integer input_value;
    integer failures;

    and_or_not_gate dut (
        .io_button(io_button),
        .led(led)
    );

    initial begin
        failures = 0;
        for (input_value = 0; input_value < 32; input_value = input_value + 1) begin
            io_button = input_value[4:0];
            #1;

            expected_led = 8'b0;
            expected_led[0] = io_button[0] & io_button[2];
            expected_led[2] = io_button[3] | io_button[4];
            expected_led[4] = ~io_button[1];

            if (led !== expected_led) begin
                $display(
                    "FAIL: io_button=%b expected led=%b got led=%b",
                    io_button,
                    expected_led,
                    led
                );
                failures = failures + 1;
            end
        end

        if (failures == 0) begin
            $display("PASS: all 32 input combinations matched");
            $finish_and_return(0);
        end else begin
            $display("FAIL: %0d input combinations did not match", failures);
            $finish_and_return(1);
        end
    end

endmodule
