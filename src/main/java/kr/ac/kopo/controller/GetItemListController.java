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
        // 상픔 목록 조회
        List<ItemVO> itemList = itemDAO.getItemList(vo);
        
        
        // 조회된 상품 목록을 request에 저장
        request.setAttribute("itemList", itemList);
        
        // itemlist.jsp로 forward
        return "/jsp/bank/itemlist.jsp";
		
		
		

	}

}
