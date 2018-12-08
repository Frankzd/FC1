`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/06 21:46:14
// Design Name: 
// Module Name: piso
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


module piso#(
	parameter		DATA_WIDTH 	= 32'd8
)(
	input 						clk,
	input						rst_n,
	input  						I_data_valid,
    input   [DATA_WIDTH - 1:0] 	I_data,
	output 						O_data,
	output	reg					ready
    );
	
	reg     [DATA_WIDTH - 1:0] 	regN;
	reg		[2:0]				cnt;
	reg							cnt_flag;
	
	always@(posedge clk) begin
		if(!rst_n) begin
			regN <= 0;
		end
		
		else if(I_data_valid) begin
			regN <= I_data;
		end
		
		else begin
			regN <= (regN >> 1'b1);
		end
	end
	
	assign  O_data = regN[0];
	
	always@(posedge clk) begin
		 if (!rst_n) begin
			cnt_flag <= 1'b0;
		end
		
		else if(I_data_valid) begin
			cnt_flag <= 1'b1;
		end
		
		else if(&cnt) begin
			cnt_flag <= 1'b0;
		end
		
		else begin
			cnt_flag <= cnt_flag;
		end
	end
	
	always@(posedge clk) begin
		 if (!rst_n) begin
			cnt <= 3'b000;
		end
		
		else if (I_data_valid) begin
			cnt <= 3'b000;
		end
		
		else if(cnt_flag)begin
			cnt <= cnt + 1'b1;
		end
		
		else begin
			cnt <= cnt;
		end
	end
	
	always@(posedge clk) begin
		if(!rst_n) begin
			ready <= 1;
		end
		
		else if(cnt == 3'b110) begin
			ready <= 1;
		end
		
		else begin
			ready <= 0;
		end
	end
	
endmodule
