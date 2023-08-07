package kr.co.mlec.board.service;

import java.util.List;

import kr.co.mlec.board.vo.BoardVO;


public interface BoardService {

	public List<BoardVO> getBoardList();

	 public BoardVO getBoardByNo(int no);
	 
	 void addBoard(BoardVO board);
	
	
}
