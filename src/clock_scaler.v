`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2022 10:06:05 AM
// Design Name: 
// Module Name: clock_scaler
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


module clock_scaler(
    input clk_in,
    output reg clk_out

    );

reg [15:0] counter;
parameter DIVISOR = 16'd4096; // New clock freq = 5MHz/4096 = 24.4kHz

always @(posedge clk_in)
begin
    counter <= counter + 16'd1;
    if(counter >= (DIVISOR-1))
        counter <= 16'd0;
        clk_out <= (counter < DIVISOR/2)?1'b1:1'b0;

end
    
endmodule