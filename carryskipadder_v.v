`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2023 17:15:34
// Design Name: 
// Module Name: carryskipadder_v
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
module full_adder(input a,input b,input c,output reg sum,carry);
always@(*)
begin
sum=a^b^c;
carry=(a&b)|(b&c)|(c&a);
end
endmodule


module carryskipadder(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3,c4,z0,z1,z2,z3,z4;
full_adder fa1(a[0],b[0],cin,sum[0],c1);
full_adder fa2(a[1],b[1],c1,sum[1],c2);
full_adder fa3(a[2],b[2],c2,sum[2],c3);
full_adder fa4(a[3],b[3],c3,sum[3],c4);
xor(z0,a[0],b[0]);
xor(z1,a[1],b[1]);
xor(z2,a[2],b[2]);
xor(z3,a[3],b[3]);
and(z4,z0,z1,z2,z3);
assign cout=z4?cin:z3;

endmodule
