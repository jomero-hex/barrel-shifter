`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2020 10:55:41 AM
// Design Name: 
// Module Name: NbitBarrelShifter_tb
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


module NbitBarrelShifter_tb;
        logic [7:0] data8;
        logic [15:0] data16;
        logic [31:0] data32;
        logic [7:0] amt;
        logic [7:0] dataOut8;
        logic [15:0] dataOut16;
        logic [31:0] dataOut32;
    
    top uut (   .data8(data8), 
                    .data16(data16), 
                    .data32(data32), 
                    .amt(amt), 
                    .dataOut8(dataOut8),
                    .dataOut16(dataOut16),
                    .dataOut32(dataOut32)
               );
                    
    initial begin
    data8 = 8'b00100011;
    data16 = 16'b00100011_10000011;
    data32 = 32'b00100011_10000011_00101100_11010000;
   // lr = 1'b0;
    #10 amt = 1;
    #10 amt = 2; 
    #10 amt = 3; 
    #10 amt = 4; 
    #10 amt = 5;
    #10 amt = 6;
    #10 amt = 7;
    #10 amt = 8;
    #10 amt = 9;
    #10 amt = 10; 
    #10 amt = 11; 
    #10 amt = 12; 
    #10 amt = 13;
    #10 amt = 14;
    #10 amt = 15;
    #10 amt = 16;
    #10 
    $stop; //stop the simulation and return the control to the software application
    end
endmodule
