package kr.co.mlec.reply.dao;

import java.util.List;

import kr.co.mlec.reply.vo.ReplyVO;

public interface ReplyDAO {
	/*
	 ��۵��
	 @param reply
	 */

	void insertReply(ReplyVO reply);
	
	/*
	 �ش� �Խù��� ��۸���Ʈ ��ȸ
	 @param boardNo �Խñ۹�ȣ
	 @return ��ȸ�� ��۸���Ʈ
	 */
	List<ReplyVO> selectAllReply(int boardNo);
}
