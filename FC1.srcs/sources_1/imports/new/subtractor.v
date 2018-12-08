`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/07 10:51:29
// Design Name: 
// Module Name: subtractor
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


module subtractor#(
	parameter		AD_WIDTH  = 32'd8
)(
	input 							start,
	input 		[AD_WIDTH - 1:0] 	dina,
	input 		[AD_WIDTH - 1:0] 	dinb,
	output 		[AD_WIDTH    :0]  	dout	
);
	
	
	assign dout = (start)?(dina - dinb):dout;
	
endmodule
