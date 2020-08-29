`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2020 09:21:51 PM
// Design Name: 
// Module Name: reverseBits
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


module reverseBits(
    input logic [31:0]inData,
    input logic en,
    output logic [31:0]outData
    );
    logic [31:0]reverse;
    generate
            genvar i;
        for (i = 0; i < 32; i = i +1)
            assign reverse[31-i]=inData[i];
    endgenerate
    always_comb
        begin
            case(en)
                1'b0: outData = inData;
                1'b1: outData = reverse;
                default: outData = inData;
            endcase
        end
endmodule
