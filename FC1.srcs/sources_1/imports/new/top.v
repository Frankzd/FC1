`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/06 20:30:04
// Design Name: opu_ip_seri_config
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 2018.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top#(
	parameter		DATA_WIDTH 			= 32'd8,								//输入电信号的位宽
	parameter		ARRAY_ROW_NUM  		= 32'd400,								//VPS阵列行数(输入电信号的路数)
	parameter		AD_WIDTH  			= 32'd8,								//AD位宽
	parameter		ARRAY_COLUMN_NUM	= 32'd120,								//VPS阵列列数(每个vps阵列所用AD的个数)
	parameter		AD_IGNORE_WIDTH		= 32'd9
 )(	
	input 														I_sys_clk,		//系统时钟信号
	input 														I_rst_n,		//系统复位信号
	input		[DATA_WIDTH * ARRAY_ROW_NUM - 1:0]				I_data,			//输入信号
	input														I_data_valid,	//输入有效信号
	input		[AD_WIDTH * ARRAY_COLUMN_NUM - 1:0]				I_ad_pos_data,	//正权值阵列AD输出信号
	input		[AD_WIDTH * ARRAY_COLUMN_NUM - 1:0]				I_ad_neg_data,	//负权值阵列AD输出信号
	input 		[ARRAY_COLUMN_NUM - 1:0]						I_ad_pos_eoc,	//正权值阵列AD转换结束信号
	input 		[ARRAY_COLUMN_NUM - 1:0]						I_ad_neg_eoc,	//负权值阵列AD转换结束信号
	output 		[ARRAY_ROW_NUM - 1:0]							O_vg,			//加在栅极上的电信号（并入串出移位寄存器输出信号）
	output 														ready,
	//output	    [ARRAY_COLUMN_NUM - 1:0]						O_ad_pos_start,		//没有用到的3个信号
	//output		[ARRAY_COLUMN_NUM - 1:0]						O_ad_neg_start,
	//output		[1:0]											O_control,
	output  [(AD_WIDTH+AD_IGNORE_WIDTH+8)*ARRAY_COLUMN_NUM-1:0]	O_data,			//输出信号
	output  													O_data_valid	//输出有效信号
	
);	

	wire		[ARRAY_COLUMN_NUM - 1:0]						I_ad_eoc;		//正负权值阵列相减后的AD转换结束信号
	wire		[(AD_WIDTH+1)*ARRAY_COLUMN_NUM - 1:0]			I_ad_data;		//正负权值阵列相减后的AD输出信号
	reg 														cnt_flag;		//计数区间
	
	//并入串出移位寄存器模块
	generate
	genvar	i;
		for(i=0;i<ARRAY_ROW_NUM;i=i+1) begin:piso
			piso u_piso(
				.clk(I_sys_clk),
				.rst_n(I_rst_n),
				.I_data_valid(I_data_valid),
				.I_data(I_data[DATA_WIDTH*(i+1)-1:DATA_WIDTH*i]),
				.O_data(O_vg[i]),
				.ready(ready)
			);
		end
	endgenerate
	
	
	//减法器模块
	assign I_ad_eoc = I_ad_pos_eoc & I_ad_neg_eoc;
	
	generate
	genvar	j;
		for(j=0;j<ARRAY_COLUMN_NUM;j=j+1) begin:subtracter
			subtractor u_subtractor(
				.start(I_ad_eoc[j]),
				.dina(I_ad_pos_data[AD_WIDTH*(j+1)-1:AD_WIDTH*j]),
				.dinb(I_ad_neg_data[AD_WIDTH*(j+1)-1:AD_WIDTH*j]),
				.dout(I_ad_data[(AD_WIDTH+1)*(j+1)-1:(AD_WIDTH+1)*j])
	        );	
		end
	endgenerate
	
	
	//计数器控制模块
	wire			MID_data_valid;
	reg	  [2:0] 	O_counter_reg;
	wire  [2:0] 	O_counter_q;
	
	delay_Mtime_Nbit #(.TIMES(2),.BITS(1))  u_delay_Mtime_Nbit1
		(
		.I_din (I_data_valid),
		.I_clk (I_sys_clk),
		.O_dout(MID_data_valid)
	);
	
	
	always@(posedge I_sys_clk) begin
		 if (!I_rst_n) begin
			cnt_flag <= 1'b0;
		end
		
		else if(MID_data_valid) begin
			cnt_flag <= 1'b1;
		end
		
		else if(&O_counter_reg) begin
			cnt_flag <= 1'b0;
		end
		
		else begin
			cnt_flag <= cnt_flag;
		end
	end
	
	always@(posedge I_sys_clk) begin
		 if (!I_rst_n) begin
			O_counter_reg <= 3'b000;
		end
		
		else if (MID_data_valid) begin
			O_counter_reg <= 3'b000;
		end
		
		else if(cnt_flag)begin
			O_counter_reg <= O_counter_reg + 1'b1;
		end
		
		else begin
			O_counter_reg <= O_counter_reg ;
		end
	end
	
	assign O_counter_q = O_counter_reg;
 

	//移位累加模块
	generate
	genvar	k;
		for(k=0;k<ARRAY_COLUMN_NUM;k=k+1) begin:shifter_and_accumlator
			shifter_and_accumlator u_shifter_and_accumlator(
				.clk(I_sys_clk),
				.rst_n(I_rst_n),
				.I_ad_data(I_ad_data[(AD_WIDTH+1)*(k+1)-1:(AD_WIDTH+1)*k]),
				.I_counter_data(O_counter_q),
				.I_accumlator_clear(MID_data_valid),
				.O_accumlator_data(O_data[(AD_WIDTH+AD_IGNORE_WIDTH+8)*(k+1)-1:(AD_WIDTH+AD_IGNORE_WIDTH+8)*k]),
				.O_data_valid(O_data_valid)
	        );	
		end
	endgenerate
	
	
endmodule