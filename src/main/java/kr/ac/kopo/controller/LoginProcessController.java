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

		//DB�� ��ġ�ϴ� ȸ���� ������
		if(dao.login(login)!=null) {
			user = dao.login(login);
			System.out.println("�α����μ��� ��Ʈ�ѷ�ID : " + user.getUser_id());
			System.out.println("�α����μ��� ��Ʈ�ѷ�PW : " + user.getUser_password());
			
			if("manager".equals(user.getUser_id())){
				msg = user.getUser_name()+"�� �α��εǾ����ϴ�";
		        url = "/ezibanking/main.do";
		        session.setAttribute("loginUser", user);
		        
		 	}else {
		 		request.setAttribute("loginUser", user);
		 		msg = user.getUser_name()+"�� ȯ���մϴ�";
		 		url = "/ezibanking/main.do";
		 		session.setAttribute("loginUser", user);
		 		
		 	}
			
		} else {
			msg = "�Է��Ͻ� ID �Ǵ� �н����尡 �߸��Ǿ����ϴ�";
			url = "/ezibanking/login.do";
		}
		
		/*
		 * // �Ŵ��� �α��������� if (user.getUser_id().equals("manager")) {
		 * 
		 * msg = user.getUser_id() + "�� �α��εǾ����ϴ�"; url = "/ezibanking/main.do";
		 * session.setAttribute("loginUser", user); System.out.println("1");
		 * 
		 * //�Ϲ� ȸ�� �α��� ������ } else if(user.getUser_id() != null){
		 * request.setAttribute("loginUser", user); msg = user.getUser_name() +
		 * "�� ȯ���մϴ�"; url = "/ezibanking/main.do"; session.setAttribute("loginUser",
		 * user); System.out.println("2");
		 * 
		 * 
		 * // ��ġ�ϴ� ȸ�� ������ } else { System.out.println("3"); msg =
		 * "�Է��Ͻ� ID �Ǵ� �н����尡 �߸��Ǿ����ϴ�"; url = "/ezibanking/login.do";
		 * System.out.println("4"); }
		 */

		request.setAttribute("msg", msg);
		request.setAttribute("url", url);

		return "/jsp/login/loginProcess.jsp";
	}

}
