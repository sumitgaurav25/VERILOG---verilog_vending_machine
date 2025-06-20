`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 21:48:18
// Design Name: 
// Module Name: vending_machine_tb
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


module vending_machine_tb();

//inputs
reg clk;
reg[1:0] in;
reg rst;

//outputs
wire out;
wire[1:0] change;

vending_machine_18105070 uut(
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change)
);

initial begin
    //initialise inputs
    $dumpfile("vending_machine_18105070.vcd");
    $dumpvars(0, vending_machine_tb);
    
    rst = 1;
    clk = 0;
    
    #6 rst = 0;
    in = 1;
    #11 in = 1;
    #16 in = 1;
    #25 $finish;
    
end
always #5 clk = ~clk;
endmodule
