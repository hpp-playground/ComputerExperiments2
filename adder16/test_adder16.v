/*                                 *
 * test_adder16.v                  *
 * 16 �ӥåȲû���ϩ�Υƥ��ȥ٥�� *
 *                                 */

`timescale 1ns / 1ns	// ���ߥ�졼������ñ�̻��� / ����
						// 1 ns + 1/1000000000 sec
`include "adder16.v"	//adder16.v �μ�����

module test;
	reg [15:0] x, y;
	reg cin;
	wire [15:0] sum;
	wire cout;

	adder16 adder16a(x, y, cin, sum, cout);

	always begin
		#10 x = x + 1000;
	end

	always begin
		#5 y = y + 3000;
	end

	initial begin
		x = 0 ; y = 0 ; cin = 0; 
	end
endmodule