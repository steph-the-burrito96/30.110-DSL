`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 20:30:59
// Design Name: 
// Module Name: multiplexer_tb
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



module multiplexer_tb();

    reg [1:0] A;
    reg [1:0] B;
    reg [1:0] C;
    reg [1:0] D;
    reg [1:0] SEL;
    wire [1:0] X;
    
multiplexer multiplexer_u1(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .SEL(SEL),
        .X(X)
    );

initial begin
        // Initialize Inputs
    A = 2'b00;
    B = 2'b01;
    C = 2'b01;
    D = 2'b11;
        
    SEL = 2'b00; #10;
    SEL = 2'b01; #10;
    SEL = 2'b10; #10;
    SEL = 2'b11; #10;
    
    $finish;
end

initial begin
    
    $monitor("Time = %d, SEL = %b, X = %b", $time, SEL, X);
    
end

endmodule

