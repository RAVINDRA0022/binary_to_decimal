`timescale 1ns / 1ps

module binary_to_decimal (
    input [3:0] in,                
    output reg [3:0] tens,         
    output reg [3:0] ones         
);
    integer i;

    always @(*) begin
        tens = 0;
        ones = 0;

        for (i = 3; i >= 0; i = i - 1) begin
          
            tens = tens * 2;
            ones = ones * 2;

            if (in[i] == 1) begin
                ones = ones + 1;
            end

            if (ones >= 10) begin
                ones = ones - 10;
                tens = tens + 1;
            end
        end
    end
endmodule
