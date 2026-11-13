// This verilog code demonstrates how combinational logic: and, or, and not are used to turn on led.


module and_or_not_gate (
    input  [4:0]  io_button,
    output [7:0]  led,

);

    //assign output led to combinational expression using bitwise operators & | ~
    assign led[0] = io_button[0] & io_button[2];    // led[0] is logic high when button[0] and button[2] are press
    assign led[1] = 1'b0;                           // led[1] is logic low 
    assign led[2] = io_button[3] | io_button[4];    // led[2] is logic high when button[3] or button[4] are press
    assign led[3] = 1'b0;                           // led[3] is logic low
    assign led[4] = ~io_button[1];                  // led[4] is not logic high when button 1 is press
    assign led[7:5] = 3'b000;                       // led[7:5] are logic low

endmodule