`timescale 1ns / 1ps

module NbitBarrelShifter
    #(parameter N = 8)
    (
        input logic [N - 1:0]data,     
        input logic [$clog2(N):0] shiftAmt,     //$clog2(N) = log base 2 of (N)
        output logic [N -1 :0]f
    );
    
    //local constant declaration
    localparam N1 = $clog2(N);                     
    
    //signal declarations
     logic [N -1:0] r  [N1-1 : 0];        
     logic [N -1:0] L [N1 : 0];
     //logic [N -1:0]x0, x1;                       
     
      //rotate right
      
      assign r[0] = shiftAmt[0] ? {data[0], data[N - 1 : 1]} : data;     //Stage 0, rotate by 0 or 1
      
      generate
            genvar i;
            for (i = 0; i < N1 - 1; i = i +1)
                    assign r[i + 1] = shiftAmt[i + 1] ? {r[i] [2 ** (i + 1) - 1 : 0], r[i] [N - 1 : 2 ** (i + 1)]} : r[i];          //stage N, rotate by 0 or N
      endgenerate                                                                                                                                                    //2**i = 2^i
      
      assign f = r[N1 - 1];   
            
      //rotate Left
      /* 
      assign L[0] = shiftAmt[0] ? {data[N - 2:0], data[N - 1]} : data;     //Stage 0, rotate by 0 or 1
      
      generate
            genvar j;
            for (j = 0; j < N1 - 1; j = j +1)
                    assign L[j + 1] = shiftAmt[j + 1] ? {L[j] [2 ** (j + 1) - 1 : 0], L[j] [N - 1 : 2 ** (j + 1)]} : L[j];        //2**i = 2^i
      endgenerate 
      
      assign x1 = L[N1 - 1];
     
     
      assign L1 = shiftAmt[1] ? {L0[5:0], L0[7:6]} : L0;          //Stage 1. rotate by 0 or 2
      
      assign x1 = shiftAmt[2] ? {L1[3:0], L1[7:4]} : L1;          //Stage 2, rotate by 0 or 4                
     
     N_bit_mux M0(.a(x0),.b(x1),.s(lr),.f(f));                           //instantiate 2 to 1 MUX            
    */
endmodule
