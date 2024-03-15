`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 21:22:00
// Design Name: 
// Module Name: nibbleadd
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


module nibbleadd(
    input [7:0] A,
    input [7:0] B,
    input ctrl,
    output [4:0] q
);

    wire [3:0] lowerA, lowerB, upperA, upperB;
    wire [4:0] sumLower, sumUpper;

    assign lowerA = A[3:0];
    assign lowerB = B[3:0];
    assign upperA = A[7:4];
    assign upperB = B[7:4];

    assign sumLower = lowerA + lowerB;
    assign sumUpper = upperA + upperB;

    assign q = ctrl ? sumUpper : sumLower;

endmodule
