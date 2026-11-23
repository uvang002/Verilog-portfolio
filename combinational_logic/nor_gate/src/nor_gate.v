`timescale 1ps / 1ps

module nor_gate (
    input a,
    input b,
    output y
);
    
    assign y = ~(a | b);

endmodule
