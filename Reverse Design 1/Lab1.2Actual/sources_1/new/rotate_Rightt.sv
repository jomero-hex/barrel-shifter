`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2020 08:54:21 PM
// Design Name: 
// Module Name: rotate_Rightt
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


module rotate_Rightt(
        input logic [7:0]data,     
        input logic [2:0]amt,
        output logic [7:0]f
    );
    //signal declarations
     logic [7:0] r0,r1;
     logic [7:0]x0;
     
      //rotate right
      
      assign r0 = amt[0] ? {data[0], data[7:1]} : data;     //Stage 0, rotate by 0 or 1
      
      assign r1 = amt[1] ? {r0[1:0], r0[7:2]} : r0;          //Stage 1. rotate by 0 or 2
      
      assign x0 = amt[2] ? {r1[3:0], r1[7:4]} : r1;          //Stage 2, rotate by 0 or 4       

      assign f = x0;
endmodule            
