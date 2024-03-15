`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 21:22:27
// Design Name: 
// Module Name: nibbleadd_tb
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


module nibbleadd_tb;

    reg [7:0] A;
    reg [7:0] B;
    reg ctrl;
    wire [4:0] q;

nibbleadd nibbleadd_u1(
        .A(A), 
        .B(B), 
        .ctrl(ctrl), 
        .q(q)
    );

initial begin

    A = 0;
    B = 0;
    ctrl = 0;

    #100 A = 8'b00001111; B = 8'b00000011; ctrl = 0;       
    #100 A = 8'b10100000; B = 8'b01010000; ctrl = 1;        
    #100
    $finish;

end
      
endmodule

