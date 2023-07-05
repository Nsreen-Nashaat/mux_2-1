`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:18:55 PM
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1
(
    input [3:0] in_a, in_b,
    input sel,
    output reg [3:0] out
);

always @(*)
    begin
      out = 'b0;
      if(sel == 0)
        out = in_a;
      else
        out = in_b;
    end  
  

endmodule
