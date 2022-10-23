`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2022 01:44:19 PM
// Design Name: 
// Module Name: slower_clock
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



module slower_clock(
    input clk_in,
    output reg clk_out

    );

reg [15:0] counter;
parameter DIVISOR = 16'd20; // New clock freq = 100MHz/20 = 5MHz

always @(posedge clk_in)
begin
    counter <= counter + 16'd1;
    if(counter >= (DIVISOR-1))
        counter <= 16'd0;
        clk_out <= (counter < DIVISOR/2)?1'b1:1'b0;

end
    
endmodule
