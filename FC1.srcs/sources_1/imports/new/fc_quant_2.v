`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/12 21:39:54
// Design Name: 
// Module Name: fc_quant_2
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


module fc_quant_2#(
	parameter	[31:0]	OUT_DATA_WIDTH			=	32'd8,					//data_width 8bit
	parameter	[31:0]	BIA_DATA_WIDTH			=	32'd23,					//偏置data_width 23bit   
	parameter	[31:0]	OPU_WIDTH				=	32'd1932,				//data_from_last_fc
	parameter	[31:0]	INPUT_NUM_FC			=	32'd120,				//
	parameter	[31:0]	RAM_DELAY				=	32'd3,
	parameter	[31:0]	MID_RESULT_WIDTH		=	32'd23					//量化中间结果位宽
)(	input												clk						,
	input												rst_n					,
	input												ready_to_quant_fc		,
	input	[OPU_WIDTH-1:0]								data_from_last_fc		,
	input	[INPUT_NUM_FC*BIA_DATA_WIDTH-1:0]			BIA_data_in				,
	output	[INPUT_NUM_FC*OUT_DATA_WIDTH-1:0]			data_to_ram				,
	output												w_ram_rd_addr			,
	output												w_ram_wr_addr			,
	output												data_out_to_ram_valid	,
	output												data_out_valid			
	);
	
	parameter	[31:0]									ADD_DELAY	=		1	;
	
	//输入寄存器组
	reg 	[OPU_WIDTH-1:0]								r_data_from_last_fc		;
	reg		[INPUT_NUM_FC*BIA_DATA_WIDTH-1:0]			r_BIA_data_in			;	
	
	//input reg
	//reg		[INPUT_NUM_FC*MID_RESULT_WIDTH-1:0]			w_QUANT_data			;			//量化的中间结果120*10bit
	wire	[INPUT_NUM_FC*MID_RESULT_WIDTH-1:0]			w_add_bias_data			;			
	reg													adder_CE				;
	
	//RAM1地址信号
	reg													ram_rd_addr			;
	reg													ram_wr_addr			;
	assign	w_ram_rd_addr	=	ram_rd_addr;
	assign	w_ram_wr_addr	=	ram_wr_addr;
	
	
	
	
	//在两个地址上交替存储
	always@(posedge clk)begin
		if(!rst_n)
			ram_wr_addr	<=	0;
		else if(data_out_to_ram_valid)
			ram_wr_addr	<=	ram_wr_addr+1;
		else
			ram_wr_addr	<=	ram_wr_addr;
	end
	
	always@(posedge clk)begin
		if(!rst_n)
			ram_rd_addr	<=	1;
		else if(data_out_to_ram_valid)	
			ram_rd_addr	<=	ram_rd_addr+1;
		else
			ram_rd_addr	<=	ram_rd_addr;
	end
	
	
	
	always@(posedge clk)begin
		if(!rst_n)
			adder_CE			<=		1'b0;
		else if(ready_to_quant_fc)
			adder_CE			<=		1'b1;
		else 
			adder_CE			<=		1'b0;
	end
	
	
	//输入缓存
	always@(posedge clk)begin
		if(!rst_n)
			r_data_from_last_fc		<=		0;
		else 
			r_data_from_last_fc		<=		data_from_last_fc;
	end
	
	always@(posedge clk)begin
		if(!rst_n)
			r_BIA_data_in		<=		0;
		else 
			r_BIA_data_in		<=		BIA_data_in;
	end
	
	//移位量化		qb=4	qw=4	qa=4
	/*
	generate
	genvar i;
		for(i=0;i<INPUT_NUM_FC;i=i+1)begin:Quantize
			always@(posedge clk)begin
				if(!rst_n)
					w_QUANT_data[MID_RESULT_WIDTH*(i+1)-1:0]		<=		0;
				else
					w_QUANT_data[MID_RESULT_WIDTH*(i+1)-1:MID_RESULT_WIDTH*i]		<=	{{3{r_data_from_last_fc[MID_RESULT_WIDTH*(i+1)-1]}},r_data_from_last_fc[MID_RESULT_WIDTH*(i+1)-2:MID_RESULT_WIDTH*i]};
			end
		end
	endgenerate
	*/
			
	/*generate
	genvar i;
		for(i=0;i<INPUT_NUM_FC;i=i+1)begin:Quantize
			assign	w_QUANT_data[OUT_DATA_WIDTH*(i+1)-1:OUT_DATA_WIDTH*i]		=		{r_data_from_last_fc[OUT_DATA_WIDTH*(i+1)-1],1'b0,1'b0,r_data_from_last_fc[OUT_DATA_WIDTH*(i+1)-2:OUT_DATA_WIDTH*i+2]};
		end
	endgenerate*/

	//与BIAS相加
	generate
	genvar j;
		for(j=0;j<INPUT_NUM_FC;j=j+1)begin:ADD
			c_addsub_1 c_addsub_1 (
			  .A(r_data_from_last_fc[MID_RESULT_WIDTH*(j+1)-1:MID_RESULT_WIDTH*j]),      // input wire [22 : 0] A
			  .B(r_BIA_data_in[BIA_DATA_WIDTH*(j+1)-1:BIA_DATA_WIDTH*j]),      // input wire [3 : 0] B
			  .CLK(clk),  // input wire CLK
			  .CE(adder_CE),    // input wire CE       
			  .S(w_add_bias_data[MID_RESULT_WIDTH*(j+1)-1:MID_RESULT_WIDTH*j])      // output wire [22 : 0] S
			);
		end
	endgenerate
	
	//ReLU
	generate
	genvar k;
		for(k=0;k<INPUT_NUM_FC;k=k+1)begin:RELU
			assign	data_to_ram[OUT_DATA_WIDTH*(k+1)-1:OUT_DATA_WIDTH*k]	=	(w_add_bias_data[MID_RESULT_WIDTH*(k+1)-1]) ? 0:w_add_bias_data[MID_RESULT_WIDTH*k+9:MID_RESULT_WIDTH*k+2];
		end
	endgenerate
	
	delay_Mtime_Nbit
			#(	.TIMES(ADD_DELAY),
				.BITS(1))
			valid_delay 
			(
				.I_din(adder_CE),
				.I_clk(clk),
				.O_dout(data_out_to_ram_valid)
			);	
			
	delay_Mtime_Nbit
			#(	.TIMES(RAM_DELAY),
				.BITS(1))
			fc2_valid_delay 
			(
				.I_din(data_out_to_ram_valid),
				.I_clk(clk),
				.O_dout(data_out_valid)
			);				
	
endmodule
