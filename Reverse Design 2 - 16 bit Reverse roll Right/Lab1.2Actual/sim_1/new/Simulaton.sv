`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2020 10:11:51 PM
// Design Name: 
// Module Name: Simulaton
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


module Simulaton;
    logic [15:0] data;
    logic [3:0] shiftAmt;
    logic lr;
    logic [15:0]f;
    
    Top uut(.data(data), .shiftAmt(shiftAmt),.lr(lr),.y(f)); // unit under test
    
    initial begin
    data = 16'b0100_0100_0010_0011;
    lr = 1'b0;
    #10 shiftAmt = 1;
    #10 shiftAmt = 2;
    #10 shiftAmt = 4;
    #10 shiftAmt = 8;
    #10 shiftAmt = 5;
    #10 shiftAmt = 1;   lr = 1'b1; 
    #10 shiftAmt = 2;
    #10 shiftAmt = 4;
    #10 shiftAmt = 8;
    #10 shiftAmt = 5;
    #10 shiftAmt = 7;   lr = 1'b0; 
    #10 shiftAmt = 8;
    #10 
    $stop; //stop the simulation and return the control to the software application
    end
endmodule
