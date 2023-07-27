package kr.ac.kopo.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.account.AccountVO;
import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.user.UserVO;

public class CreateAccountProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
			request.setCharacterEncoding("UTF-8");
	       
	       
	        HttpSession session = request.getSession();
	        UserVO user = (UserVO) session.getAttribute("loginUser");

	        String account = "0504" + generateRandomNumber(8);
	        String user_id = user.getUser_id();
	        String acc_nickname = request.getParameter("acc_nickname");
	        String ac_password = request.getParameter("ac_password");
	        String bankcode = "0504";
	        Long balance = 0L;
	        String item_name = request.getParameter("item_name");
	        Date ac_date = new Date();
	        String slp_ac = "Á¤»ó°èÁÂ";
	        
	        System.out.println(account);
	        System.out.println(user_id);
	        System.out.println(ac_password);
	        System.out.println(item_name);
	        System.out.println(ac_date);
	        System.out.println(bankcode);
	        
	        AccountVO vo = new AccountVO();
	        vo.setAccount(account);
	        vo.setUser_id(user_id);
	        vo.setAcc_nickname(acc_nickname);
	        vo.setAc_password(ac_password);
	        vo.setBankcode(bankcode);
	        vo.setBalance(balance);
	        vo.setItem_name(item_name);
	        vo.setAc_date(ac_date);
	        vo.setSlp_ac(slp_ac);
	        
	        AccountDAO dao = new AccountDAO();
	        dao.insertAccount(vo);
	        
	        
	        String url = "";
	        url = "/ezibanking/myacclist.do";
	        request.setAttribute("url", url);
	        return "/jsp/bank/acclist.jsp";
	    }

	    private String generateRandomNumber(int length) {
	        StringBuilder sb = new StringBuilder();
	        for (int i = 0; i < length; i++) {
	            int digit = (int) (Math.random() * 10);
	            sb.append(digit);
	        }
	        return sb.toString();
	    }


}
