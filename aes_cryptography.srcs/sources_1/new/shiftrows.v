`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2019 00:49:36
// Design Name: 
// Module Name: shiftrows
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


module shiftrows(in, out);
    input [127: 0] in;
    output [127: 0] out;
//rotating first row by 0 byte   
    assign out[127: 120] = in[127: 120];
    assign out[95: 88]  =  in[95: 88];
    assign out[63: 56] = in[63: 56];
    assign out[31: 24] = in[31: 24];
//rotating second row by 1 byte  
    assign out[119: 112] = in[87: 80];
    assign out[87: 80] = in[55: 48];
    assign out[55: 48] = in[23: 16];
    assign out[23: 16] = in[119: 112];
//rotating third row by 2 byte    
    assign out[111: 104] = in[47: 40];
    assign out[79: 72]   = in[15: 8];
    assign out[47: 40]  = in[111: 104];
    assign out[15: 8]  =  in[79: 72];
//rotating third fourth by 3 byte      
    assign out[103: 96] = in[7: 0];
    assign out[71: 64] = in[103: 96];
    assign out[39: 32] = in[71: 64];
    assign out[7: 0] = in[39: 32];
    
endmodule
