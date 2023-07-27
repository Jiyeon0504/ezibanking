package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.account.TransactionVO;
import kr.ac.kopo.dao.TransactionDAO;

public class TransactListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String accountno = request.getParameter("acc");
		System.out.println();
		 TransactionVO vo = new TransactionVO();
//		 System.out.println("∞Ë§¬¡≈»£" + accountno);
		 vo.setAcc_no(accountno);
		 
				 
		 
		 TransactionDAO transact = new TransactionDAO();
	       
	     List<TransactionVO> transactList = transact.getTransactList(vo);
	       
	     request.setAttribute("transactList", transactList);
		
		return "/jsp/bank/transactList.jsp";
	}

}
