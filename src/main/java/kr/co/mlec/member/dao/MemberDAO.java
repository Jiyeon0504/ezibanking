package kr.co.mlec.member.dao;

import kr.co.mlec.member.vo.MemberVO;
/*
t_member(ȸ�����̺�)CRUD
@author User
*/
public interface MemberDAO {

	MemberVO login(MemberVO member);
	
	/*
	 id,password ������ ȸ�������� ��ȸ
	 @param member id�� password ���� ������
	 @return login ������ ��ȸ�� ȸ��������
	 */
}