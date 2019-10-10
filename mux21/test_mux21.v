/*                            *
 * test_mux21.v               *
 * mux21 �Υƥ��ȥ٥��       *
 *                            */

`timescale 1ns / 1ns    // ���ߥ�졼������ñ�̻��� / ����
                        // 1 ns = 1/1000000000 sec
`include "mux21.v"   // mux21.v �μ�����

module test_mux21 ;           // �ƥ��ȥ٥���⥸�塼��, �����ϥݡ���̵��
   // mux21 �������� flip-flop(1-bit �쥸����) �����
   reg S1, D0, D1;  // flip-flop

   // mux21 �ν����� wire(������) �����
   wire Y;         // 1-bit ������

   // module mux21 (S1, D0, D1, Y) �μ��β�
   mux21 mux21a(S1, D0, D1, Y);

   
   // ���ߥ�졼�����ѥ���
   initial begin
       // S1, D0, D1 �ν����
       S1 = 0; D0 = 0; D1 = 0;

       // 20 ñ�̻���(20 ns)��
       #20  S1 = 0; D0 = 1; D1 = 0;

       // ���� 20 ñ�̻���(20 ns)��
       #20  S1 = 1; D0 = 1; D1 = 0;

       // ���� 20 ñ�̻���(20 ns)��
       #20  S1 = 0; D0 = 0; D1 = 0;

       // ���� 80 ñ�̻���(80 ns)��, ��λ
       #80 $finish;
   end
endmodule
