`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2023 17:28:41
// Design Name: 
// Module Name: carryskipadder_tb
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


module carryskipadder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
carryskipadder aat(a,b,cin,sum,cout);
initial begin
a=4'b0010; b=4'b0100;cin=1'b0;#12
a=4'b0001; b=4'b0010;cin=1'b1;#12
a=4'b1111;b=4'b1110;cin=1'b1;#12
a=4'b1110;b=4'b1110;cin=1'b1;
end
initial begin
$monitor(a,b,cin,sum,cout);
#100 $finish;
end


endmodule
