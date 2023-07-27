package kr.ac.kopo.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.account.TransactionVO;
import kr.ac.kopo.dao.TransactionDAO;
import kr.ac.kopo.user.UserVO;

public class TransactionProcessController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		
		 String acc_no = request.getParameter("acc_no");
		 System.out.println("계좌번호:"+acc_no);
		 String bankCode = "0504";
		 System.out.println("은행코드"+bankCode);
	     String sender = ((UserVO)session.getAttribute("loginUser")).getUser_name();
	     System.out.println("보낸사람"+sender);
	     String t_comment = request.getParameter("t_comment");
	     System.out.println("메모"+t_comment);
	     String t_type = "이체";
	     System.out.println("타입"+t_type);
	     long t_amount = Long.parseLong(request.getParameter("t_amount"));
	     System.out.println("금액"+t_amount);
		 String rc_bankcode = request.getParameter("rc_bankcode");
		 System.out.println("받는은행코드"+rc_bankcode);
		 String rc_account = request.getParameter("rc_account");
		 System.out.println("받는계좌"+rc_account);
//		 String bankname = request.getParameter("bankname");
//		 long balance = Long.valueOf(request.getParameter("balance"));
//		 System.out.println(balance); 
	      
		 
		 session.setAttribute("amount",t_amount);
		 
	     
	      
	      TransactionVO vo = new TransactionVO();
	      vo.setAcc_no(acc_no);
	      vo.setBankcode(bankCode);
	      vo.setSender(sender);
	      vo.setRc_bankcode(rc_bankcode);
	      vo.setRc_account(rc_account);
	      vo.setT_type(t_type);
	      vo.setT_comment(t_comment);
	      vo.setT_amount(t_amount);
//	      vo.setBalance(balance);
	      
	      
	      TransactionDAO dao = new TransactionDAO();
	      int rcheck;
	      try {
	         rcheck = dao.bankSelect(rc_bankcode, acc_no, rc_account, t_amount);
	         System.out.println(rcheck);
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	     dao.transactionHistory(vo);
	     dao.depositHistory(vo);
	      
	      
	      return "/jsp/bank/transactResult.jsp";
	   }

}
