package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.account.ItemVO;
import kr.ac.kopo.dao.ItemDAO;

public class CreateAccountController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		
		HttpSession session = request.getSession();
		 ItemVO vo = new ItemVO();
		 ItemDAO itemDAO = new ItemDAO();
        // ���� ��� ��ȸ
        List<ItemVO> itemList = itemDAO.getItemList(vo);
        System.out.println(itemList);
        
    	
    	
        // ��ȸ�� ��ǰ ����� request�� ����
        request.setAttribute("itemList", itemList);
		
		return "/jsp/bank/createacc.jsp";
	}

}
