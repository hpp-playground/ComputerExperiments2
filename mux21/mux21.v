/*                    *
 * mux21.v            *
 * 2-1 �ޥ���ץ쥯��  *
 * (2-1 ���쥯����ϩ)  *
 *                    */

module mux21 (S1, D0, D1, Y);  // �����ϥݡ���
   input  S1, D0, D1;          // ���� S1, D0, D1
   output Y;                   // ���� Y

   // Multiplexer body
   // Y = ((not S1) and D0) or (S1 and D1)
   assign Y = (~S1 & D0)       // ���ϥݡ��Ȥ��Ф���
              | ( S1 & D1);    // ������ assign ʸ�ǹԤ�
endmodule	
