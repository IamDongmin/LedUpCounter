`timescale 1ns / 1ps

module tb_counter();

    reg i_btn ;
    reg i_reset;

    wire [2:0] o_led;

    top_counter dut(
        .i_btn(i_btn),
        .i_reset(i_reset),
        .o_led(o_led)
    );

    initial begin
        #00 i_btn = 1'b0; i_reset = 1'b0;
        #10 i_btn = 1'b1; i_reset = 1'b0;

        for (integer i=0; i<20; i=i+1) begin
        #10 i_btn = 1'b0; i_reset = 1'b0;
        #10 i_btn = 1'b1; i_reset = 1'b0;
        end

        for (integer i=0; i<20; i=i+1) begin
        #10 i_btn = 1'b0; i_reset = 1'b1;
        #10 i_btn = 1'b1; i_reset = 1'b1;
        end

        for (integer i=0; i<20; i=i+1) begin
        #10 i_btn = 1'b0; i_reset = 1'b0;
        #10 i_btn = 1'b1; i_reset = 1'b0;
        end

        #10 $finish;
    end
endmodule
