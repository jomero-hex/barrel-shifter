`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2020 10:50:44 AM
// Design Name: 
// Module Name: top
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


module top
    (
        input logic [7:0] data8,
        input logic [15:0] data16,
        input logic [31:0] data32,
        input logic [7:0] amt,
        output logic [7:0] dataOut8,
        output logic [15:0] dataOut16,
        output logic [31:0] dataOut32
    );
    
    NbitBarrelShifter unit1 (       .data(data8),
                                                .shiftAmt(amt),
                                                .f(dataOut8)
                                        );
                                        
   NbitBarrelShifter #(.N(16)) unit2    (       .data(data16),
                                                                    .shiftAmt(amt),
                                                                    .f(dataOut16)
                                                            );
                                                         
   NbitBarrelShifter #(.N(32)) unit3    (       .data(data32),
                                                                    .shiftAmt(amt),
                                                                    .f(dataOut32)
                                                            );  
endmodule
