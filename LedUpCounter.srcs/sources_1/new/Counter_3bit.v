`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 10:38:49
// Design Name: 
// Module Name: 3bit_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_3bit(
    input i_btn,
    input i_reset,

    output [2:0] o_led
    );

    counter_3 U0(
        .i_btn(i_btn),
        .i_reset(i_reset),
        .o_counter(o_led)
    );
    
endmodule
