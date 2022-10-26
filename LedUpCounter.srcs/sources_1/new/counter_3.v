`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/26 10:53:02
// Design Name: 
// Module Name: counter_3
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


module counter_3(
    input i_btn,
    input i_reset,

    output [2:0]    o_counter
    );

    reg [2:0]   r_counter = 0;

    assign o_counter =  r_counter;

    always @(posedge i_btn or posedge i_reset) begin
        if(i_reset) begin    
            r_counter <= 0;
        end
        else begin
            r_counter <= r_counter + 1;
        end
    end
endmodule
