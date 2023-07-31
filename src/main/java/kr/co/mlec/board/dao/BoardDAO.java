package kr.co.mlec.board.dao;

import java.util.List;

import kr.co.mlec.board.vo.BoardVO;

/**
 * Database���� �Խ��ǰ� ���õ� CRUD ǥ�� �������̽�
 * @author User
 */

public interface BoardDAO {

	   /**
	    * ��ü�Խñ� ��ȸ
	    * @return ��ȸ�� �Խñ�
	    */
	   List<BoardVO> selectAllBoard();

	   BoardVO selectBoardByNo(int no);
	   
	   void insertBoard (BoardVO board);
	   
	   
	}