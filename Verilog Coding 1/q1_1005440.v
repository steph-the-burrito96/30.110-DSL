`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 13:30:26
// Design Name: 
// Module Name: decade_counter
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


module decade_counter(
    input clk,
    input rst,
    output reg ten,
    output reg [3:0] count
    );
 
always @(posedge clk or posedge rst)
begin
    if(rst)
    begin 
    count <= 4'b0;
    ten <= 1'b0;
    end
    
    else if(count == 4'b1001)
    begin
    count <= 4'b0000;
    ten <= 1'b1;
    end
    
    else
    begin
    ten <= 1'b0;
    count <= count + 1'b1;
    end
end
endmodule
