`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 21:35:08
// Design Name: 
// Module Name: CCTA_tb
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


module CCTA_tb();

    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    reg rst;
    reg ctrl;
    wire [4:0] q;

CCTA CCTA_u1(
    .A(A), 
    .B(B), 
    .C(C), 
    .rst(rst), 
    .ctrl(ctrl), 
    .q(q)
    );

initial begin

     A = 0;
     B = 0;
     C = 0;
     rst = 0;
     ctrl = 0;

     #10 rst = 1; 
     #10 rst = 0; 

     #10 A = 4'b0011; B = 4'b0101; ctrl = 0;
     #20 A = 4'b1010; C = 4'b0101; ctrl = 1;
     #20 A = 4'b1110; B = 4'b0001; ctrl = 0;
     #20 A = 4'b1001; C = 4'b0011; ctrl = 1;
     #20 A = 4'b0001; B = 4'b0001; C = 4'b0000; ctrl = 0;
     #20 A = 4'b0010; B = 4'b0010; C = 4'b0001; ctrl = 1;
     #20 A = 4'b0100; B = 4'b0100; C = 4'b0010; ctrl = 0;
     #20 A = 4'b1000; B = 4'b1000; C = 4'b0100; ctrl = 1;
     #20 A = 4'b0111; B = 4'b0001; C = 4'b0011; ctrl = 0;
     #20 A = 4'b1011; B = 4'b0011; C = 4'b0111; ctrl = 1;
     #20
        
     $finish;
end
      
endmodule

