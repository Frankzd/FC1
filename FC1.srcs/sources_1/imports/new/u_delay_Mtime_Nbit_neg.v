`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/21 14:19:56
// Design Name: 
// Module Name: u_delay_Mtime_Nbit_neg
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


module delay_Mtime_Nbit
#(parameter TIMES = 2,	parameter BITS = 8)
(
	input [BITS-1:0] I_din,
	input I_clk,
	output[BITS-1:0] O_dout
);	
	reg [BITS-1:0] W [TIMES-1:0];
	reg [31:0] i;
	always @ (posedge I_clk)
	begin
		W[0] <= I_din;		
		if (TIMES>=2)
		begin
			for (i=0; i<TIMES-1; i=i+1)
			begin
				W[i+1] <= W[i];
			end
		end		
	end
	assign O_dout = W[TIMES-1];
endmodule
