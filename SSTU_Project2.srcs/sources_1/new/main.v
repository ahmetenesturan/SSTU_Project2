`timescale 1ns / 1ps
module student_num_fsm(input x, clk, rst, output reg y);

    reg [3:0] s;
    reg [1:0] count_a;
    reg [1:0] count_b;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            s <= 4'd1;
            y <= 0;
            count_a <= 0;
            count_b <= 0;
        end
        else begin
            case(s)
            0: begin

            end
            1: begin
                if(x) s <= 4'd6;
                else s <= 4'd2;
            end
            2: begin
                if(x) s <= 4'd3;
                else s <= 4'd1;
            end
            3: begin
                if(x) s <= 4'd4;
                else s <= 4'd1;
            end
            4: begin
                if(x) s <= 4'd1;
                else s <= 4'd5;
            end
            5: begin
                y <= 1;
                count_b <= count_b + 1;
                if(count_b == 2'd1) begin
                    s <= 4'd0;
                end
                else begin
                    if(x) s <= 4'd6;
                    else s <= 4'd2;
                end
            end
            6: begin
                if(x) s <= 4'd1;
                else s <= 4'd7;
            end
            7: begin
                if(x) s <= 4'd1;
                else s <= 4'd8;
            end
            8: begin
                if(x) s <= 4'd1;
                else s <= 4'd9;
            end
            9: begin
                y <= 1;
                count_a <= count_a + 1;
                if(count_a == 2'd1) begin
                    s <= 4'd0;
                end
                else begin
                    if(x) s <= 4'd6;
                    else s <= 4'd2;
                end
            end
            /*
            10: begin
                if(count_a == 2'd2 || count_b == 2'd2) begin
                    s <= 4'd0;
                end
                else begin
                    s <= 4'd1;
                end
            end
            */
            endcase
        end
    end

endmodule
