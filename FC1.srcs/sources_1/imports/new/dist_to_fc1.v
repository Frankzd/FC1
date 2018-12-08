`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/12 10:40:43
// Design Name: 
// Module Name: fc1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// ready_to_start_fc1:上层运算结束信号=》写ram0
// data_out_valid_FC1:FC1运算使能信号=》读ram0
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module disti_to_fc1#(
	parameter	[31:0]	ACT_DATA_WIDTH			=	32'd8,					//激励data_width 8bit
	parameter	[31:0]	RAM_WIDTH0				=	32'd3200,				//RAM0位宽
	parameter	[31:0]	INPUT_NUM_FC1			=	32'd400,				//输入:400
	parameter	[31:0]	RAM_DELAY				=	32'd3
)(	input											clk						,
	input											rst_n					,
	input											ready_to_start_fc1		,
	
	output											w_ram0_rd_addr			,
	output											w_ram0_wr_addr			,
	output	 										data_out_valid_FC1		
	);
	
	
	
	//COUNT RAM DELAY
	reg		[4:0]										cnt_ram_delay			;
		
	
	//RAM ADDRESS
	reg													ram0_rd_addr			;
	reg													ram0_wr_addr			;
	
	assign	w_ram0_rd_addr	=	ram0_rd_addr;
	assign	w_ram0_wr_addr	=	ram0_wr_addr;

	//在两个地址上交替存储
	always@(posedge clk)begin
		if(!rst_n)
			ram0_wr_addr	<=	0;
		else if(ready_to_start_fc1)
			ram0_wr_addr	<=	ram0_wr_addr+1;
		else
			ram0_wr_addr	<=	ram0_wr_addr;
	end
	
/*	//RAM DELAY
	always@(posedge clk)begin
		if(!rst_n)
			cnt_ram_delay	<=	4;
		else if(ready_to_start_fc1)
			cnt_ram_delay	<=	0;
		else if(cnt_ram_delay<=RAM_DELAY)
			cnt_ram_delay	<=	cnt_ram_delay + 1;
		else 
			cnt_ram_delay	<=	4;
	end
	
	//收到start信号的RAM_DELAY个clk后可以进行ram0的读取
	always@(posedge clk)begin
		if(!rst_n)
			data_out_valid_FC1			<=	0;
		else if(cnt_ram_delay==RAM_DELAY)
			data_out_valid_FC1			<=	1;
		else
			data_out_valid_FC1			<=	0;
	end
	*/
	delay_Mtime_Nbit
			#(	.TIMES(RAM_DELAY),
				.BITS(1))
			fc1_valid_delay 
			(
				.I_din(ready_to_start_fc1),
				.I_clk(clk),
				.O_dout(data_out_valid_FC1)
			);		
	
	
	//
	always@(posedge clk)begin
		if(!rst_n)
			ram0_rd_addr	<=	1;
		else if(ready_to_start_fc1)	
			ram0_rd_addr	<=	ram0_rd_addr+1;
		else
			ram0_rd_addr	<=	ram0_rd_addr;
	end
	
endmodule
