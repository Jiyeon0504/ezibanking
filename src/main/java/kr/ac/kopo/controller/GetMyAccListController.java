package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.account.AccountVO;
import kr.ac.kopo.dao.AccountDAO;
import kr.ac.kopo.user.UserVO;

public class GetMyAccListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {


		 HttpSession session = request.getSession();
		 UserVO user = (UserVO)session.getAttribute("loginUser");
		 String id = user.getUser_id();
		 
		 AccountVO vo = new AccountVO();
		 vo.setUser_id(id);
		 
		 AccountDAO account = new AccountDAO();
       // 상픔 목록 조회
       List<AccountVO> accountList = account.getAccountList(vo);
       
       
       // 조회된 상품 목록을 request에 저장
       
//       HttpSession session = request.getSession();
       request.setAttribute("accountList", accountList);
       // itemlist.jsp로 forward
		
		return "/jsp/bank/acclist.jsp";
	}

}
