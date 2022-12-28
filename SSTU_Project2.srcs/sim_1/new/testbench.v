`timescale 1ns / 1ps
module testbench;

    reg clk, rst, x;
    wire y;

    

    always begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end

    student_num_fsm uut(x, clk, rst, y);

    initial begin
        rst = 0;
        #2;
        rst = 1;
        #10;
        rst = 0;
        x = 1;
        #10;
        x = 0;
        #10;
        x = 0;
        #10;
        x = 0;
        #10;
        x = 0;
        #10;
        x = 1;
        #10;
        x = 1;
        #10;
        x = 0;
        #10;
        x = 1;
        #10;
        x = 0;
        #10;
        x = 0;
        #10;
        x = 0;
        #30;
        $finish;
    end

endmodule