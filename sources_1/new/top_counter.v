`timescale 1ns / 1ps


module top_counter(
    input i_clk,
    input i_reset,

    output [7:0] o_led

    );

    wire w_clk;

    clock_divider prescaler(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_clk)
    );

    counter counter_8bit(
        .i_clk(w_clk),
        .i_reset(i_reset),
        .o_counter(o_led)
    );

endmodule
