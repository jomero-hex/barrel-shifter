`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2020 09:55:04 PM
// Design Name: 
// Module Name: Top
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


module Top(
    input logic [15:0]data,
    input logic lr,
    input logic [3:0]shiftAmt,
    output logic [15:0]y
    );
    logic [15:0]rev0,rev1;
    
    reverseBits m0(.inData(data), .en(lr), .outData(rev0));
    rotate_Rightt m1(.data(rev0), .amt(shiftAmt), .f(rev1));
    reverseBits m2(.inData(rev1), .en(lr), .outData(y));
endmodule