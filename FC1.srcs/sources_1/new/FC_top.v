`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/07 10:06:32
// Design Name: 
// Module Name: FC_top
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


module fc1#(
	parameter	[31:0]	OUT_DATA_WIDTH			=	32'd8,					//output_data_width 8bit
	parameter	[31:0]	BIA_DATA_WIDTH			=	32'd4,					//bias_data_width 4bit
	parameter	[31:0]	RAM_WIDTH0				=	32'd3200,				//RAM0位宽
	parameter	[31:0]	OPU_WIDTH1				=	32'd3200,				//OPU运算阵列FC1输出位宽
	parameter	[31:0]	OPU_WIDTH2				=	32'd1932,				//OPU运算阵列FC2输出位宽
	parameter	[31:0]	OPU_WIDTH3				=	32'd230,				//OPU运算阵列FC3输出位宽
	parameter	[31:0]	INPUT_NUM_FC1			=	32'd400,				//输入:400
	parameter	[31:0]	INPUT_NUM_FC2			=	32'd120,				//
	parameter	[31:0]	INPUT_NUM_FC3			=	32'd84,
	parameter	[31:0]	OUTPUT_NUM				=	32'd10,
	parameter	[31:0]	AD_WIDTH				=	32'd8
)(	input												clk						,
	input												rst_n					,
	input												ready_to_start_fc1		,
	//input												ready_to_quant_fc1		,
	//input												ready_to_quant_fc2		,
	//input												ready_to_quant_fc3		,
	input	[RAM_WIDTH0-1:0]							data_to_ram0			,
	//input	[OPU_WIDTH1-1:0]							data_from_fc1			,
	//input	[OPU_WIDTH2-1:0]							data_from_fc2			,
	//input	[OPU_WIDTH3-1:0]							data_from_fc3			,
	input	[INPUT_NUM_FC2*BIA_DATA_WIDTH-1:0]			FC1_BIA_data_in			,
	input	[INPUT_NUM_FC3*BIA_DATA_WIDTH-1:0]			FC2_BIA_data_in			,
	input	[OUTPUT_NUM*BIA_DATA_WIDTH-1:0]				FC3_BIA_data_in			,
	
	//output	[INPUT_NUM_FC1*OUT_DATA_WIDTH-1:0]		data_to_FC1				,			
	//output	[INPUT_NUM_FC2*OUT_DATA_WIDTH-1:0]		data_to_FC2				,
	//output	[INPUT_NUM_FC3*OUT_DATA_WIDTH-1:0]		data_to_FC3				,
	output	[OUTPUT_NUM*OUT_DATA_WIDTH-1:0]				data_out				,
	output 	[INPUT_NUM_FC1-1:0]							O_vg_fc1				,
	output 	[INPUT_NUM_FC2-1:0]							O_vg_fc2				,
	output 	[INPUT_NUM_FC3-1:0]							O_vg_fc3				,
	
	output 	[INPUT_NUM_FC2*AD_WIDTH-1:0]				O_ad_pos_data_fc1		,
	output 	[INPUT_NUM_FC2*AD_WIDTH-1:0]				O_ad_neg_data_fc1		,
	output 	[INPUT_NUM_FC3*AD_WIDTH-1:0]				O_ad_pos_data_fc2		,
	output 	[INPUT_NUM_FC3*AD_WIDTH-1:0]				O_ad_neg_data_fc2		,
	output 	[OUTPUT_NUM*AD_WIDTH-1:0]					O_ad_pos_data_fc3		,
	output 	[OUTPUT_NUM*AD_WIDTH-1:0]					O_ad_neg_data_fc3		,
	output 	[INPUT_NUM_FC2-1:0]							O_ad_pos_eoc_fc1		,
	output 	[INPUT_NUM_FC2-1:0]							O_ad_neg_eoc_fc1		,
	output 	[INPUT_NUM_FC3-1:0]							O_ad_pos_eoc_fc2		,
	output 	[INPUT_NUM_FC3-1:0]							O_ad_neg_eoc_fc2		,
	output	[OUTPUT_NUM-1:0]							O_ad_pos_eoc_fc3		,
	output	[OUTPUT_NUM-1:0]							O_ad_neg_eoc_fc3		,
	//output											data_out_valid_FC1		,
	//output											data_out_valid_FC2		,
	//output											data_out_valid_FC3		,
	output											data_out_valid
	);
	
	wire	[OPU_WIDTH1-1:0]						data_from_fc1			;
	wire	[OPU_WIDTH2-1:0]						data_from_fc2			;
	wire	[OPU_WIDTH3-1:0]						data_from_fc3			;
	
	wire											ready_to_quant_fc1		;
	wire											ready_to_quant_fc2		;
	wire											ready_to_quant_fc3		;
	

	wire	[INPUT_NUM_FC1*OUT_DATA_WIDTH-1:0]			data_to_FC1				;
	wire	[INPUT_NUM_FC2*OUT_DATA_WIDTH-1:0]			data_to_FC2				;
	wire	[INPUT_NUM_FC3*OUT_DATA_WIDTH-1:0]			data_to_FC3				;
	
	wire												data_out_valid_FC1		;
	wire												data_out_valid_FC2		;
	wire												data_out_valid_FC3		;
	
	
	wire	[INPUT_NUM_FC2*OUT_DATA_WIDTH-1:0]			data_to_ram1			;//FC1运算结果
	wire	[INPUT_NUM_FC3*OUT_DATA_WIDTH-1:0]			data_to_ram2			;//FC2运算结果
	wire 	[OUTPUT_NUM*OUT_DATA_WIDTH-1:0]				data_to_ram3			;//FC3运算结果
	
/*	
	wire 	[INPUT_NUM_FC1-1:0]							w_vg_fc1				;
	wire 	[INPUT_NUM_FC2-1:0]							w_vg_fc2				;
	wire 	[INPUT_NUM_FC3-1:0]							w_vg_fc3				;
	
	wire 	[INPUT_NUM_FC2*AD_WIDTH-1:0]				w_ad_pos_data_fc1		;
	wire 	[INPUT_NUM_FC2*AD_WIDTH-1:0]				w_ad_neg_data_fc1		;
	wire 	[INPUT_NUM_FC3*AD_WIDTH-1:0]				w_ad_pos_data_fc2		;
	wire 	[INPUT_NUM_FC3*AD_WIDTH-1:0]				w_ad_neg_data_fc2		;
	wire 	[OUTPUT_NUM*AD_WIDTH-1:0]					w_ad_pos_data_fc3		;
	wire 	[OUTPUT_NUM*AD_WIDTH-1:0]					w_ad_neg_data_fc3		;
	wire 	[INPUT_NUM_FC2-1:0]							w_ad_pos_eoc_fc1		;
	wire 	[INPUT_NUM_FC2-1:0]							w_ad_neg_eoc_fc1		;
	wire 	[INPUT_NUM_FC3-1:0]							w_ad_pos_eoc_fc2		;
	wire 	[INPUT_NUM_FC3-1:0]							w_ad_neg_eoc_fc2		;
	wire	[OUTPUT_NUM-1:0]							w_ad_pos_eoc_fc3		;
	wire	[OUTPUT_NUM-1:0]							w_ad_neg_eoc_fc3		;
*/
	//RAM ADDRESS
	wire												w_ram0_rd_addr			;
	wire												w_ram0_wr_addr			;
	wire												w_ram1_rd_addr			;
	wire												w_ram1_wr_addr			;
	wire												w_ram2_rd_addr			;
	wire												w_ram2_wr_addr			;
	wire												w_ram3_rd_addr			;
	wire												w_ram3_wr_addr			;
	wire												data_out_to_ram1_valid	;
	wire												data_out_to_ram2_valid	;
	wire												data_out_to_ram3_valid	;
	

	
	disti_to_fc1 disti_to_fc1(
		.clk			(clk	)	,			
		.rst_n			(rst_n	)	,
		.ready_to_start_fc1			(ready_to_start_fc1	)	,		
		.w_ram0_rd_addr	(w_ram0_rd_addr)	,
		.w_ram0_wr_addr	(w_ram0_wr_addr)	,
		.data_out_valid_FC1			(data_out_valid_FC1	)												
	);
	
	top
	#(	.DATA_WIDTH(8),								//输入电信号的位宽
		.ARRAY_ROW_NUM(400),								//VPS阵列行数(输入电信号的路数)
		.AD_WIDTH(8),								//AD位宽
		.ARRAY_COLUMN_NUM(120),								//VPS阵列列数(每个vps阵列所用AD的个数)
		.AD_IGNORE_WIDTH(9))
	fc1_ctl(
		.I_sys_clk			(clk				)	,
		.I_rst_n			(rst_n				)	,
		.I_data				(data_to_FC1		)	,
		.I_data_valid		(data_out_valid_FC1	)	,
		.I_ad_pos_data		(O_ad_pos_data_fc1	)	,
		.I_ad_neg_data		(O_ad_neg_data_fc1	)	,
		.I_ad_pos_eoc		(O_ad_pos_eoc_fc1	)	,
		.I_ad_neg_eoc		(O_ad_neg_eoc_fc1	)	,
		.O_vg				(O_vg_fc1			)	,
		.ready				(					)	,
		.O_data				(data_from_fc1		)	,
		.O_data_valid		(ready_to_quant_fc1	)	
	);
	
	top
	#(	.DATA_WIDTH(8),								//输入电信号的位宽
		.ARRAY_ROW_NUM(120),								//VPS阵列行数(输入电信号的路数)
		.AD_WIDTH(8),								//AD位宽
		.ARRAY_COLUMN_NUM(84),								//VPS阵列列数(每个vps阵列所用AD的个数)
		.AD_IGNORE_WIDTH(7))
	fc2_ctl(
		.I_sys_clk			(clk				)	,
		.I_rst_n			(rst_n				)	,
		.I_data				(data_to_FC2		)	,
		.I_data_valid		(data_out_valid_FC2	)	,
		.I_ad_pos_data		(O_ad_pos_data_fc2	)	,
		.I_ad_neg_data		(O_ad_neg_data_fc2	)	,
		.I_ad_pos_eoc		(O_ad_pos_eoc_fc2	)	,
		.I_ad_neg_eoc		(O_ad_neg_eoc_fc2	)	,
		.O_vg				(O_vg_fc2			)	,
		.ready				(					)	,
		.O_data				(data_from_fc2		)	,
		.O_data_valid		(ready_to_quant_fc2	)	
	);
	
	top
	#(	.DATA_WIDTH(8),								//输入电信号的位宽
		.ARRAY_ROW_NUM(84),								//VPS阵列行数(输入电信号的路数)
		.AD_WIDTH(8),								//AD位宽
		.ARRAY_COLUMN_NUM(10),								//VPS阵列列数(每个vps阵列所用AD的个数)
		.AD_IGNORE_WIDTH(7))
	fc3_ctl(
		.I_sys_clk			(clk				)	,
		.I_rst_n			(rst_n				)	,
		.I_data				(data_to_FC3		)	,
		.I_data_valid		(data_out_valid_FC3	)	,
		.I_ad_pos_data		(O_ad_pos_data_fc3	)	,
		.I_ad_neg_data		(O_ad_neg_data_fc3	)	,
		.I_ad_pos_eoc		(O_ad_pos_eoc_fc3	)	,
		.I_ad_neg_eoc		(O_ad_neg_eoc_fc3	)	,
		.O_vg				(O_vg_fc3			)	,
		.ready				(					)	,
		.O_data				(data_from_fc3		)	,
		.O_data_valid		(ready_to_quant_fc3	)	
	);
	
	/*
	opu_array
	#(	.ARRAY_ROW_NUM(400),								
		.AD_WIDTH(8),								
		.ARRAY_COLUMN_NUM(120),								//VPS阵列列数(每个vps阵列所用AD的个数)
		.AD_IGNORE_WIDTH(9),
		.WEIGHT_WIDTH(8))
	fc1_opu_array(
		.I_sys_clk			(clk				)	,
		.I_rst_n			(rst_n				)	,
		.I_vg				(w_vg_fc1			)	,
		.I_pos_weight		(					)	,
		.I_neg_weight		(					)	,
		.O_ad_pos_data		(w_ad_pos_data_fc1	)	,
		.O_ad_neg_data		(w_ad_neg_data_fc1	)	,
		.O_ad_pos_eoc		(w_ad_pos_eoc_fc1	)	,
		.O_ad_neg_eoc		(w_ad_neg_eoc_fc1	)	,
	);
	*/	
	
	fc_quant fc1_quant(
		.clk			(clk	)	,			
		.rst_n			(rst_n	)	,
		.ready_to_quant_fc		(ready_to_quant_fc1	)	,		
		.data_from_last_fc	(data_from_fc1	)	,		
		.BIA_data_in	(FC1_BIA_data_in	)	,
		.data_to_ram	(data_to_ram1	)	,
		.w_ram_rd_addr	(w_ram1_rd_addr)	,
		.w_ram_wr_addr	(w_ram1_wr_addr)	,
		.data_out_to_ram_valid			(data_out_to_ram1_valid	)	,											
		.data_out_valid		(data_out_valid_FC2)
	);
	
	fc_quant_2 
	#(	.OPU_WIDTH(1932),
		.INPUT_NUM_FC(84),
		.MID_RESULT_WIDTH(23))
	fc2_quant(
		.clk			(clk	)	,			
		.rst_n			(rst_n	)	,
		.ready_to_quant_fc		(ready_to_quant_fc2	)	,		
		.data_from_last_fc	(data_from_fc2	)	,		
		.BIA_data_in	(FC2_BIA_data_in	)	,
		.data_to_ram	(data_to_ram2	)	,
		.w_ram_rd_addr	(w_ram2_rd_addr)	,
		.w_ram_wr_addr	(w_ram2_wr_addr)	,
		.data_out_to_ram_valid			(data_out_to_ram2_valid	)	,											
		.data_out_valid		(data_out_valid_FC3)
	);
	
	fc_quant_2 
	#(	.OPU_WIDTH(230),
		.INPUT_NUM_FC(10),
		.MID_RESULT_WIDTH(23))
	fc3_quant(
		.clk			(clk	)	,			
		.rst_n			(rst_n	)	,
		.ready_to_quant_fc		(ready_to_quant_fc3	)	,		
		.data_from_last_fc	(data_from_fc3	)	,		
		.BIA_data_in	(FC3_BIA_data_in	)	,
		.data_to_ram	(data_to_ram3	)	,
		.w_ram_rd_addr	(w_ram3_rd_addr)	,
		.w_ram_wr_addr	(w_ram3_wr_addr)	,
		.data_out_to_ram_valid			(data_out_to_ram3_valid	)	,											
		.data_out_valid		(data_out_valid)
	);
	
	
	ram0_3200_2 ram0_3200_2 (
	  .clka(clk),    // input wire clka
	  .ena(1'b1),      // input wire ena
	  .wea(ready_to_start_fc1),      // input wire [0 : 0] wea
	  .addra(w_ram0_wr_addr),  // input wire [0 : 0] addra
	  .dina(data_to_ram0),    // input wire [3199 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .enb(1'b1),      // input wire enb
	  .addrb(w_ram0_rd_addr),  // input wire [0 : 0] addrb
	  .doutb(data_to_FC1)  // output wire [3199 : 0] doutb
	);
	
	ram1_960_2 ram1_960_2 (
	  .clka(clk),    // input wire clka
	  .ena(1'b1),      // input wire ena
	  .wea(data_out_to_ram1_valid),      // input wire [0 : 0] wea
	  .addra(w_ram1_wr_addr),  // input wire [0 : 0] addra
	  .dina(data_to_ram1),    // input wire [959 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .enb(1'b1),      // input wire enb
	  .addrb(w_ram1_rd_addr),  // input wire [0 : 0] addrb
	  .doutb(data_to_FC2)  // output wire [959 : 0] doutb
	);	
	
	ram2_672_2 ram2_672_2(
	  .clka(clk),    // input wire clka
	  .ena(1'b1),      // input wire ena
	  .wea(data_out_to_ram2_valid),      // input wire [0 : 0] wea
	  .addra(w_ram2_wr_addr),  // input wire [0 : 0] addra
	  .dina(data_to_ram2),    // input wire [671 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .enb(1'b1),      // input wire enb
	  .addrb(w_ram2_rd_addr),  // input wire [0 : 0] addrb
	  .doutb(data_to_FC3)  // output wire [671 : 0] doutb
	);
	
	ram3_80_2 ram3_80_2 (
	  .clka(clk),    // input wire clka
	  .ena(1'b1),      // input wire ena
	  .wea(data_out_to_ram3_valid),      // input wire [0 : 0] wea
	  .addra(w_ram3_wr_addr),  // input wire [9 : 0] addra
	  .dina(data_to_ram3),    // input wire [79 : 0] dina
	  .clkb(clk),    // input wire clkb
	  .enb(1'b1),      // input wire enb
	  .addrb(w_ram3_rd_addr),  // input wire [9 : 0] addrb
	  .doutb(data_out)  // output wire [79 : 0] doutb
	);
	
endmodule
