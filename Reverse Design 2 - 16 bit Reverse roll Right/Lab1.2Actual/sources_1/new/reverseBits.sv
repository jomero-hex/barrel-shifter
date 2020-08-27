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
    input logic [15:0]inData,
    input logic en,
    output logic [15:0]outData
    );
    always_comb
    begin
            case(en)
            1'b0: outData=inData;
            1'b1: outData={inData[0],inData[1],inData[2],inData[3],inData[4],inData[5],inData[6],inData[7],inData[8],inData[9],inData[10],inData[11],inData[12],inData[13],inData[14],inData[15]};
            default: outData=inData;
            endcase
    end
endmodule
