`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:11 06/08/2023 
// Design Name: 
// Module Name:    sigmoid1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sigmoid1(
		input signed [15:0] in,
		output reg signed [15:0] out
    );
    reg [15:0] inshi;
	 always @(*)
	 begin
		case(in[15])
		1'b0: begin
					if(in[14:0]>15'b0101_0000_0000_000)
						out = 1;
					else if(in[14:0]>15'b0010_0110_0000_000) begin
						inshi = in>>>5;
						out = inshi+16'b00000_1101_1000_000;
						end
					else if(in[14:0]>15'b0001_0000_0000_000) begin
						inshi = in>>>3;
						out = inshi + 16'b00000_1010_0000_000;
						end
					else begin
						inshi = in>>>2;
						out = inshi + 16'b00000_1000_0000_000;
						end
				end
		1'b1: begin
					if(in[14:0]<15'b1011_0000_0000_000)
						out = 0;
					else if(in[14:0]<15'b1101_1010_0000_000) begin
					   inshi = (in>>>5);
						out = inshi + 16'b00000_0010_1000_000 ;
						end
					else if(in[14:0]<15'b1111_0000_0000_000) begin  
					   inshi = in>>>3;
						out = 16'b00000_0110_0000_000 + inshi;
						end
					else begin
					   inshi = in>>>2;
						out = 16'b00000_1000_0000_000 + inshi;
						end
				end
		default: out=0;
		endcase
		end

endmodule
