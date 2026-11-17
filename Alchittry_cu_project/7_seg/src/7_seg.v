
// This verilog code demonstrate how to use combinational logic gates: and, or, and not to display numbers on a 4-digital 7 segment display. 
// I will demenstrate how to program the rest button into a switch to alternate between two different sequential procedure.

module and_or_not_gate (
    input         clk,        // 
    input         switch_seg, // assign switch_seg to pin P8
    input  [4:0]  io_button,
    output [7:0]  io_segment,
    output [3:0]  io_select
);

    //register to hold input value when switch_seg is press, switch between button_segment and combo_segment
    reg display_combo = 1'b0;
    reg display_combo_previous = 1'b0;

    //always procedure is used to start a sequence of procedure. Starts at the positive edge of the clock.  
    always @(posedge clk) begin
        if (switch_seg && !display_combo_previous) //
        display_combo <= ~display_combo; //

        display_combo_previous <= switch_seg; //
    end

    //wire io_segment to drive two different segment. segment are active low, 0 = on
    wire [7:0] button_segments;
    wire [7:0] combo_segments;

    //button_segment displays button number when the coresponding button is press.
    assign button_segments =
        io_button[0] ? 8'b11111001 :                // Display 1 
        io_button[1] ? 8'b10100100 :                // Display 2 
        io_button[2] ? 8'b10110000 :                // Display 3 
        io_button[3] ? 8'b10011001 :                // Display 4 
        io_button[4] ? 8'b10010010 :                // Display 5 
                       8'b11111111;                 // No button
    
    //combo_segment displays led number when combinational logic is true
    assign combo_segments =
        io_button[0] & io_button[2] ? 8'b11000000 : // Display 0
        io_button[3] | io_button[4] ? 8'b10100100 : // Display 2 
        io_button[1] ? 8'b10011001 :                // Display 4 
                       8'b11111111;                 // No button


    assign io_segment = display_combo ? combo_segments : button_segments;
    assign io_select = 4'b0111;

endmodule
