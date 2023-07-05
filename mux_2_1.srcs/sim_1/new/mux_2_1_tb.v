`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:35:03 PM
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb();

    reg [3:0] in_a , in_b;
    reg sel;
    wire [3:0] out;
    
    mux_2_1 dut
    (
    .in_a(in_a),
    .in_b(in_b),
    .sel(sel),
    .out(out)
    );
    
    initial 
    begin 
        sel = 0; in_a=1; in_b=0;
        #100;
        sel = 1; in_a=0; in_b=1;
        #100;
        sel = 1; in_a=1; in_b=0;
        #100;
        sel = 0; in_a=0; in_b=1;
        #100;
        sel = 0; in_a=0; in_b=1;
        #100;
        sel = 1; in_a=0; in_b=1;
end 

endmodule
