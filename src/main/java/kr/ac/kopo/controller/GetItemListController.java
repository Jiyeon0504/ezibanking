package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.account.ItemVO;
import kr.ac.kopo.dao.ItemDAO;



public class GetItemListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		 ItemVO vo = new ItemVO();
		 ItemDAO itemDAO = new ItemDAO();
        // ���� ��� ��ȸ
        List<ItemVO> itemList = itemDAO.getItemList(vo);
        
        
        // ��ȸ�� ��ǰ ����� request�� ����
        request.setAttribute("itemList", itemList);
        
        // itemlist.jsp�� forward
        return "/jsp/bank/itemlist.jsp";
		
		
		

	}

}
