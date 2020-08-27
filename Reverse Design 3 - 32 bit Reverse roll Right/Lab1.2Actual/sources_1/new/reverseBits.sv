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
    always_comb
    begin
            case(en)
            1'b0: outData=inData;
            1'b1: outData={inData[0],inData[1],inData[2],inData[3],inData[4],inData[5],inData[6],inData[7],inData[8],inData[9],inData[10],inData[11],inData[12],inData[13],inData[14],inData[15],
            inData[16],inData[17],inData[18],inData[19],inData[20],inData[21],inData[22],inData[23],inData[24],inData[25],inData[26],inData[27],inData[28],inData[29],inData[30],inData[31]};
            default: outData=inData;
            endcase
    end
endmodule
