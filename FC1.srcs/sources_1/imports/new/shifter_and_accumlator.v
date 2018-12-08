`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/07 14:08:59
// Design Name: 
// Module Name: shifter_and_accumlator
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


module shifter_and_accumlator#(
	parameter		AD_WIDTH  		= 32'd8,
	parameter		AD_IGNORE_WIDTH	= 32'd9
)(
    input 													clk,
	input 													rst_n,
    input 		[AD_WIDTH :0]				   		 		I_ad_data,			//8位ADC的输出信号
    input  		[2:0]										I_counter_data,		//计数器输出信号
    input 													I_accumlator_clear,	//累加器清零信号
    output 	reg	signed[(AD_WIDTH+AD_IGNORE_WIDTH+8)-1:0]	O_accumlator_data,	//累加器输出信号
	output 	reg												O_data_valid		//输出有效信号					
    );
	
	wire		[2:0]										I_counter_data_delay;
	
	delay_Mtime_Nbit #(.TIMES(1),.BITS(3))  u_delay_Mtime_Nbit
		(
		.I_din (I_counter_data),
		.I_clk (clk),
		.O_dout(I_counter_data_delay)
	);
	
	always@(posedge clk) begin
		if(!rst_n) begin
			O_accumlator_data <= 0;
		end
		
		else if(I_accumlator_clear == 1'b1) begin
			O_accumlator_data <= 0;
		end
		
		else if(I_counter_data_delay == 3'b111) begin
			O_accumlator_data <= 0;
		end
		
		else begin
			O_accumlator_data <= O_accumlator_data + ($signed({I_ad_data,9'b000000000}) <<< I_counter_data); 
		end
	end
	
	always@(posedge clk) begin
		if(!rst_n) begin
			O_data_valid <= 0;
		end
		
		else if(I_counter_data == 3'b111) begin
			O_data_valid <= 1;
		end
		
		else begin
			O_data_valid <= 0;
		end
	end
	
endmodule
