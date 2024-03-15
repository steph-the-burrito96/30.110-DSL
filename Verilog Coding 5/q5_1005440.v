`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 21:34:52
// Design Name: 
// Module Name: CCTA
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


module CCTA(
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input rst,
    input ctrl,
    output reg [4:0] q
);

    always @(A, B, C, ctrl, rst) 
    begin
        if (rst) begin
            q <= 5'b0;
        end 
        
        else if (ctrl == 0) begin
            q <= A + B;
        end
        
        else begin
            q <= A - C;
        end
    end

endmodule
