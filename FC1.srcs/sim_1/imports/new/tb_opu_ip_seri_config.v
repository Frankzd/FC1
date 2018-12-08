`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/07 16:14:43
// Design Name: tb_opu_ip_seri_config
// Module Name: tb_opu_ip_seri_config
// Project Name: opu_ip_seri_config
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


module tb_opu_ip_seri_config(

    );
	parameter		DATA_WIDTH 				= 	32'd8	;									//输入电信号的位宽
	parameter		ARRAY_ROW_NUM_FC1  		= 	32'd400	;									//VPS阵列行数(输入电信号的路数)
	parameter		ARRAY_ROW_NUM_FC2		= 	32'd120	;
	parameter		ARRAY_ROW_NUM_FC3		= 	32'd84	;
	parameter		AD_WIDTH  				= 	32'd8	;									//AD位宽
	parameter		ARRAY_COLUMN_NUM_FC1	= 	32'd120	;									//VPS阵列列数(每个vps阵列所用AD的个数)
	parameter		ARRAY_COLUMN_NUM_FC2	= 	32'd84	;
	parameter		ARRAY_COLUMN_NUM_FC3	= 	32'd10	;
	parameter		WEIGHT_WIDTH			= 	32'd8	;									//权值位宽
	parameter 		DATA_NUM				= 	32'd10	;									//输入电信号数目
	parameter 		POS_WEIGHT_NUM			= 	32'd1	;									//输入正权值数目
	parameter 		NEG_WEIGHT_NUM			= 	32'd1	;									//输入负权值数目
	parameter		AD_IGNORE_WIDTH_FC1		= 	32'd9	;
	parameter		AD_IGNORE_WIDTH_FC2 	= 	32'd7	;
	parameter		AD_IGNORE_WIDTH_FC3 	= 	32'd7	;
	parameter		BIA_DATA_WIDTH			= 	32'd4	;
	parameter		OUTPUT_NUM				= 	32'd10	;
	parameter		OUT_DATA_WIDTH			=	32'd10	;
	
	reg 																	I_sys_clk			;			//系统时钟信号
	reg 																	I_rst_n				;			//系统复位信号
	reg			[DATA_WIDTH * ARRAY_ROW_NUM_FC1 - 1:0]						I_data				;			//电输入信号
	reg																		I_data_valid		;			//输入有效信号
	reg			[ARRAY_ROW_NUM_FC1*ARRAY_COLUMN_NUM_FC1*WEIGHT_WIDTH - 1:0]	I_pos_weight_fc1	;			//输入正阵列权重
	reg			[ARRAY_ROW_NUM_FC1*ARRAY_COLUMN_NUM_FC1*WEIGHT_WIDTH - 1:0]	I_neg_weight_fc1	;			//输入负阵列权重
	reg			[ARRAY_ROW_NUM_FC2*ARRAY_COLUMN_NUM_FC2*WEIGHT_WIDTH - 1:0]	I_pos_weight_fc2	;			//输入正阵列权重
	reg			[ARRAY_ROW_NUM_FC2*ARRAY_COLUMN_NUM_FC2*WEIGHT_WIDTH - 1:0]	I_neg_weight_fc2	;			//输入负阵列权重
	reg			[ARRAY_ROW_NUM_FC3*ARRAY_COLUMN_NUM_FC3*WEIGHT_WIDTH - 1:0]	I_pos_weight_fc3	;			//输入正阵列权重
	reg			[ARRAY_ROW_NUM_FC3*ARRAY_COLUMN_NUM_FC3*WEIGHT_WIDTH - 1:0]	I_neg_weight_fc3	;			//输入负阵列权重
		
	reg 		[ARRAY_COLUMN_NUM_FC1 * BIA_DATA_WIDTH - 1:0]					FC1_BIA_data_in		;
	reg 		[ARRAY_COLUMN_NUM_FC2 * BIA_DATA_WIDTH - 1:0]					FC2_BIA_data_in		;
	reg 		[ARRAY_COLUMN_NUM_FC3 * BIA_DATA_WIDTH - 1:0]					FC3_BIA_data_in		;
	
	
	wire		[AD_WIDTH * ARRAY_COLUMN_NUM_FC1 - 1:0]						I_ad_pos_data		;			//正权值阵列AD输出信号
	wire		[AD_WIDTH * ARRAY_COLUMN_NUM_FC1 - 1:0]						I_ad_neg_data		;			//负权值阵列AD输出信号
	wire 		[ARRAY_COLUMN_NUM_FC1 - 1:0]								I_ad_pos_eoc		;			//正权值阵列AD转换结束信号
	wire 		[ARRAY_COLUMN_NUM_FC1 - 1:0]								I_ad_neg_eoc		;			//负权值阵列AD转换结束信号
	wire 	 	[ARRAY_ROW_NUM_FC1 - 1:0]									w_vg_fc1			;			//加在栅极上的电信号（并入串出移位寄存器输出信号）
	wire 	 	[ARRAY_ROW_NUM_FC2 - 1:0]									w_vg_fc2			;			//加在栅极上的电信号（并入串出移位寄存器输出信号）
	wire 	 	[ARRAY_ROW_NUM_FC3 - 1:0]									w_vg_fc3			;			//加在栅极上的电信号（并入串出移位寄存器输出信号）
	wire 		[ARRAY_COLUMN_NUM_FC1 * AD_WIDTH - 1:0]						w_ad_pos_data_fc1	;
	wire 		[ARRAY_COLUMN_NUM_FC1 * AD_WIDTH - 1:0]						w_ad_neg_data_fc1	;
	wire 		[ARRAY_COLUMN_NUM_FC2 * AD_WIDTH - 1:0]						w_ad_pos_data_fc2	;
	wire 		[ARRAY_COLUMN_NUM_FC2 * AD_WIDTH - 1:0]						w_ad_neg_data_fc2	;
	wire 		[ARRAY_COLUMN_NUM_FC3 * AD_WIDTH - 1:0]						w_ad_pos_data_fc3	;
	wire 		[ARRAY_COLUMN_NUM_FC3 * AD_WIDTH - 1:0]						w_ad_neg_data_fc3	;
	wire 		[ARRAY_COLUMN_NUM_FC1 - 1:0]								w_ad_pos_eoc_fc1	;
	wire 		[ARRAY_COLUMN_NUM_FC2 - 1:0]								w_ad_pos_eoc_fc2	;
	wire 		[ARRAY_COLUMN_NUM_FC2 - 1:0]								w_ad_pos_eoc_fc3	;
	
	
	wire	    [ARRAY_COLUMN_NUM_FC1 - 1:0]								O_ad_pos_start		;		
	wire		[ARRAY_COLUMN_NUM_FC1 - 1:0]								O_ad_neg_start		;
	wire		[1:0]														O_control			;
	wire 		[(AD_WIDTH+AD_IGNORE_WIDTH_FC1+8)*ARRAY_COLUMN_NUM_FC1-1:0]	O_data				;			//输出信号
	wire																	O_data_valid		;			//输出有效信号
	wire 		[OUTPUT_NUM * OUT_DATA_WIDTH - 1:0]							O_data_out			;
	
	reg 		[31:0]														cnt					;			//计数信号
	reg 		[3:0]														cnt_1				;	
	
	//例化顶层模块
	/*
	top u_top(
		.I_sys_clk(I_sys_clk),
		.I_rst_n(I_rst_n),
		.I_data(I_data),
		.I_data_valid(I_data_valid),
		.I_ad_pos_data(I_ad_pos_data),
		.I_ad_neg_data(I_ad_neg_data),
		.I_ad_pos_eoc(I_ad_pos_eoc),
		.I_ad_neg_eoc(I_ad_neg_eoc),
		.O_vg(w_vg_fc1),
		.ready(ready),
		.O_ad_pos_start(O_ad_pos_start),
		.O_ad_neg_start(O_ad_neg_start),
		.O_control(O_control),
		.O_data(O_data),
		.O_data_valid(O_data_valid)
	);*/
	fc1 u_fc_top(
		.clk(I_sys_clk),
		.rst_n(I_rst_n),
		.ready_to_start_fc1(I_data_valid),
		.data_to_ram0(I_data),
		.FC1_BIA_data_in(FC1_BIA_data_in),
		.FC2_BIA_data_in(FC2_BIA_data_in),
		.FC3_BIA_data_in(FC3_BIA_data_in),
		.data_out(O_data_out),
		.O_vg_fc1(w_vg_fc1),
		.O_vg_fc2(w_vg_fc2),
		.O_vg_fc3(w_vg_fc3),
		.O_ad_pos_data_fc1(w_ad_pos_data_fc1),
		.O_ad_neg_data_fc1(w_ad_neg_data_fc1),
		.O_ad_pos_data_fc2(w_ad_pos_data_fc2),
		.O_ad_neg_data_fc2(w_ad_neg_data_fc2),
		.O_ad_pos_data_fc3(w_ad_pos_data_fc3),
		.O_ad_neg_data_fc3(w_ad_neg_data_fc3),
		.O_ad_pos_eoc_fc1(w_ad_pos_eoc_fc1),
		.O_ad_neg_eoc_fc1(w_ad_neg_eoc_fc1),
		.O_ad_pos_eoc_fc2(w_ad_pos_eoc_fc2),
		.O_ad_neg_eoc_fc2(w_ad_neg_eoc_fc2),
		.O_ad_pos_eoc_fc3(w_ad_pos_eoc_fc3),
		.O_ad_neg_eoc_fc3(w_ad_neg_eoc_fc3),
		.data_out_valid(O_data_valid)
	);

		
	//例化opu阵列模型
	opu_array_fc1 u_opu_array_fc1(
		.I_sys_clk(I_sys_clk),
		.I_rst_n(I_rst_n),
		.I_vg(w_vg_fc1),
		.I_pos_weight(I_pos_weight_fc1),
		.I_neg_weight(I_neg_weight_fc1),
		.O_ad_pos_data(w_ad_pos_data_fc1),
		.O_ad_neg_data(w_ad_neg_data_fc1),
		.O_ad_pos_eoc(w_ad_pos_eoc_fc1),
		.O_ad_neg_eoc(w_ad_neg_eoc_fc1)
	);	
	
	//产生时钟和复位激励
	initial begin
		I_sys_clk = 0;
	    forever 
		#10 I_sys_clk = ~I_sys_clk;
	end 
	
	initial begin
		I_rst_n = 0;
		#20
		I_rst_n = 1;
	end
	
	
	//读入激励和权值
	reg [DATA_WIDTH*ARRAY_ROW_NUM_FC1 - 1:0]  						data_men		[DATA_NUM -1:0];
	reg	[ARRAY_ROW_NUM_FC1*ARRAY_COLUMN_NUM_FC1*WEIGHT_WIDTH - 1:0]		pos_weight_men	[POS_WEIGHT_NUM - 1:0];
	reg	[ARRAY_ROW_NUM_FC1*ARRAY_COLUMN_NUM_FC1*WEIGHT_WIDTH - 1:0]		neg_weight_men	[NEG_WEIGHT_NUM - 1:0];
	
	initial begin
		$readmemb("D:\\project\\OPU\\ip\\matlab\\400-120\\I_data.txt",data_men);
		$readmemb("D:\\project\\OPU\\ip\\matlab\\400-120\\I_pos_weight.txt",pos_weight_men);
		$readmemb("D:\\project\\OPU\\ip\\matlab\\400-120\\I_neg_weight.txt",neg_weight_men);
	end 
	
	initial begin
		I_pos_weight_fc1 <= pos_weight_men[0];
		I_neg_weight_fc1 <=	neg_weight_men[0];
	end
	
	always@(posedge I_sys_clk) begin
		if(!I_rst_n) begin
			cnt_1 <= 4'd0;
		end
		
		else if(cnt_1 == 4'b1000) begin
			cnt_1 <= 4'd0;
		end
		
		else begin
			cnt_1 <= cnt_1 + 1'd1;
		end
	end	
	
	always@(posedge I_sys_clk) begin
		if(!I_rst_n) begin
			cnt <= 32'd0;
		end
		
		else if(cnt == DATA_NUM) begin
			cnt <= cnt;
		end
		
		else if(cnt_1 == 4'b1000) begin
			cnt <= cnt + 1'd1;
		end
	end	
	
	always@(posedge I_sys_clk) begin
		if(!I_rst_n) begin
			I_data <= 'd0;
			I_data_valid <= 'd0;
		end	
		
		else if(cnt >= 0 && cnt <= DATA_NUM-1) begin
			I_data <= data_men[cnt];
			I_data_valid <= 'd1;
		end
		
		else begin
			I_data <= 'd0;
			I_data_valid <= 'd0;
		end
	end	
	
	
	//将输出写入文件

	integer handle;
	
	initial begin
		handle = $fopen("D:\\project\\OPU\\ip\\matlab\\400-120\\O_data.txt","w");
		#16000
		$fclose(handle);
		#100
		$stop;
	end
	
	always@(posedge I_sys_clk) begin
		if(O_data_valid) begin
			$fdisplay(handle,"%b",O_data); 
		end
	end
	
endmodule