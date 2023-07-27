package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.account.AccountVO;
import kr.ac.kopo.account.BankVO;
import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.dao.BankDAO;
import kr.ac.kopo.user.UserVO;

public class TransactionController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("loginUser");
		String id = user.getUser_id();
		String userName = user.getUser_name();
		System.out.println(user);

		session.setAttribute("user", user);
		session.setAttribute("userName", userName);
		// 계좌목록 가져오기
		AccountVO accvo = new AccountVO();

		accvo.setUser_id(id);
		String acc = request.getParameter("acc");
		String bal = request.getParameter("bal");
		AccountDAO account = new AccountDAO();
		session.setAttribute("selectedAcc", acc);
		session.setAttribute("selectedBal", bal);

		
		 List<AccountVO> accountList = account.getAccountList(accvo);
		 session.setAttribute("accountList", accountList);
		 

		System.out.println(acc);

		// 은행목록 가져오기
		BankVO bankvo = new BankVO();
		BankDAO bank = new BankDAO();
		List<BankVO> bankList = bank.getBankList(bankvo);
		session.setAttribute("bankList", bankList);

		return "/jsp/bank/transaction.jsp";

	}
}
