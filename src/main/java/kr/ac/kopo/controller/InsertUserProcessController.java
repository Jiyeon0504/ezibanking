package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.UserDAO;
import kr.ac.kopo.user.UserVO;



public class InsertUserProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("userid");
		String name = request.getParameter("username");
		String password = request.getParameter("userpassword");
		String phone = request.getParameter("phone");
		String bday = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String mail = request.getParameter("email");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");

		UserVO vo = new UserVO();
		vo.setUser_id(id);
		vo.setUser_name(name);
		vo.setUser_password(password);
		vo.setUser_phone(phone);
		vo.setUser_birth(bday);
		vo.setUser_gender(gender);
		vo.setUser_email(mail);
		vo.setUser_zipcode(zipcode);
		vo.setUser_address(address);
		vo.setUser_address2(address2);

		UserDAO dao = new UserDAO();
		dao.insertUser(vo);
		
		String msg = "";
		String url = "";
		
		msg = vo.getUser_name()+"님 반갑습니다. 회원가입 되었습니다.";
		url = "/ezibanking/login.do";
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		
		return "/jsp/login/memjoinprocess.jsp";
	}

}
