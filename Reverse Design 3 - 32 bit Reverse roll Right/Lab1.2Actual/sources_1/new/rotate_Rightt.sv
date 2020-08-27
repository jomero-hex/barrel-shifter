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
        input logic [31:0]data,     
        input logic [4:0]amt,
        output logic [31:0]f
    );
    //signal declarations
     logic [31:0] r0,r1,r2,r3;
     logic [31:0]x0;
     
      //rotate right
      
      assign r0 = amt[0] ? {data[0], data[31:1]} : data;     //Stage 0, rotate by 0 or 1
      
      assign r1 = amt[1] ? {r0[1:0], r0[31:2]} : r0;          //Stage 1. rotate by 0 or 2
      
      assign r2= amt[2] ? {r1[3:0], r1[31:4]} : r1;          //Stage 2, rotate by 0 or 4  
      
      assign r3= amt[3] ? {r2[7:0], r2[31:8]} : r2;          //Stage 3, rotate by 0 or 8     
      
      assign x0= amt[4] ? {r3[15:0], r3[31:16]} : r3;     //Stage 4, rotate by 0 or 16          
             

      assign f = x0;
endmodule            
