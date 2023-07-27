package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.board.BoardVO;
import kr.ac.kopo.dao.BoardDAO;

public class GetnoticeController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		BoardVO board = new BoardVO();
		BoardDAO dao =  new BoardDAO();
		
		 List<BoardVO> boardList = dao.getBoardList();
		
		request.setAttribute("board", board);
		
		return "/jsp/board/getnoticeList.jsp";
	}

}
