`timescale 1ns / 1ps


module counter(
    input i_clk,
    input i_reset,

    output [7:0] o_counter
    );

    reg [7:0] r_counter = 0;        //r_counter 0으로 초기화

    assign o_counter = r_counter;

    always @(posedge i_clk or posedge i_reset) begin
        if (i_reset) begin
            r_counter <= 0;     // r_counter = 0 같은 것
        end    
        else begin
            r_counter <= r_counter + 1;
        end
    end
endmodule
