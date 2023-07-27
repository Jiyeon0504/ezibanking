package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.board.BoardVO;
import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.user.UserVO;

public class WriteqnaProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
          HttpSession session = request.getSession();
          UserVO login = (UserVO) session.getAttribute("loginUser");
          String writerID = login.getUser_id();

          String title = request.getParameter("title");
          String content = request.getParameter("content");

          BoardVO vo = new BoardVO();
          vo.setTitle(title);
          vo.setId(writerID);
          vo.setContent(content);

          BoardDAO dao = new BoardDAO();
          dao.writeqna(vo);
          
          String msg = "";
  		String url = "";
  		
//  		msg = "문의글이 정상 등록되었습니다.";
//  		url = "/ezibanking/login.do";
//  		
//  		request.setAttribute("msg", msg);
//  		request.setAttribute("url", url);
          

          return "/jsp/board/boardList.jsp";

	}

}
