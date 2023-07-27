package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.UserDAO;
import kr.ac.kopo.user.UserVO;

public class LoginProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("user_id");
		String password = request.getParameter("user_password");
		
		String msg = "";
		String url = "";

		UserVO login = new UserVO(id, password);
		UserDAO dao = new UserDAO();
		UserVO user = dao.login(login);
		
			
		HttpSession session = request.getSession();

		//DB에 일치하는 회원이 있을때
		if(dao.login(login)!=null) {
			user = dao.login(login);
			System.out.println("로긴프로세스 컨트롤러ID : " + user.getUser_id());
			System.out.println("로긴프로세스 컨트롤러PW : " + user.getUser_password());
			
			if("manager".equals(user.getUser_id())){
				msg = user.getUser_name()+"님 로그인되었습니다";
		        url = "/ezibanking/main.do";
		        session.setAttribute("loginUser", user);
		        
		 	}else {
		 		request.setAttribute("loginUser", user);
		 		msg = user.getUser_name()+"님 환영합니다";
		 		url = "/ezibanking/main.do";
		 		session.setAttribute("loginUser", user);
		 		
		 	}
			
		} else {
			msg = "입력하신 ID 또는 패스워드가 잘못되었습니다";
			url = "/ezibanking/login.do";
		}
		
		/*
		 * // 매니저 로그인했을때 if (user.getUser_id().equals("manager")) {
		 * 
		 * msg = user.getUser_id() + "님 로그인되었습니다"; url = "/ezibanking/main.do";
		 * session.setAttribute("loginUser", user); System.out.println("1");
		 * 
		 * //일반 회원 로그인 했을때 } else if(user.getUser_id() != null){
		 * request.setAttribute("loginUser", user); msg = user.getUser_name() +
		 * "님 환영합니다"; url = "/ezibanking/main.do"; session.setAttribute("loginUser",
		 * user); System.out.println("2");
		 * 
		 * 
		 * // 일치하는 회원 없을때 } else { System.out.println("3"); msg =
		 * "입력하신 ID 또는 패스워드가 잘못되었습니다"; url = "/ezibanking/login.do";
		 * System.out.println("4"); }
		 */

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/jsp/login/loginProcess.jsp";
	}

}
