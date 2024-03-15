`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 23:16:51
// Design Name: 
// Module Name: demultiplexer
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


module demultiplexer(
    input [1:0]A,
    input [1:0]SEL,
    output reg [1:0]W,
    output reg [1:0]X,
    output reg [1:0]Y,
    output reg [1:0]Z
    );

always@ (A or SEL) begin
    
    W = 2'b00;
    X = 2'b00;
    Y = 2'b00;
    Z = 2'b00;
    
    case(SEL)
        2'b00: W = A;
        2'b01: X = A;
        2'b10: Y = A;
        2'b11: Z = A;
    endcase
end

endmodule
