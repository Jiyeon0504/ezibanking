package kr.co.mlec.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.board.service.BoardService;
import kr.co.mlec.board.vo.BoardVO;
import kr.co.mlec.member.vo.MemberVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	@GetMapping("/board")

	// request�������� ������
	public String list(HttpServletRequest request) {

		List<BoardVO> boardList = boardService.getBoardList();

		// �������� ���
		request.setAttribute("boardList", boardList);

		/* return "board/list2"; */
		return "board/getnoticeList";
	}

	@GetMapping("/board/detail")
//	public String detail(@RequestParam("no") int no, @RequestParam("title") String data) {
	public String detail(HttpServletRequest request, @RequestParam("no") int no) {

		System.out.println("no:" + no);

		// no���� �ش� �Խñ� ��ȸ
		boardService.getBoardByNo(no);

		BoardVO board = boardService.getBoardByNo(no);
		// ���������� ���
		request.setAttribute("board", board);

		return "board/detail";
	}

//	@GetMapping("/board/{no}")
//	public String detail1(@PathVariable("no") int boardNo, HttpServletRequest request) {
//		
//		System.out.println("boardNo : " + boardNo);
//		// no���� �ش� �Խñ� ��ȸ
//		BoardVO board = boardService.getBoardByNo(boardNo);
//
//		// �������� ���
//		request.setAttribute("board", board);
//
//		return "board/detail";
//	}

	@GetMapping("/board/{no}")
	public ModelAndView detail2(@PathVariable("no") int boardNo, HttpServletRequest request) {

		System.out.println("boardNo : " + boardNo);
		// no���� �ش� �Խñ� ��ȸ
		BoardVO board = boardService.getBoardByNo(boardNo);

		ModelAndView mav = new ModelAndView();
		// �������Ű���� �ּ�
		mav.setViewName("board/detail");
		// �������� ��Ͻ�Ű���� ��
		mav.addObject("board", board);

		// �������� ��� , ������ ���༭ �ʿ� ������
//		request.setAttribute("board", board);

		return mav;
	}

	@GetMapping("/board/write")
	public void writeForm(Model model, HttpSession session) {
		BoardVO board = new BoardVO(); // ����ִ� vo��ü �ϳ� �����
		
		MemberVO userVO = (MemberVO)session.getAttribute("userVO");
		if(userVO!=null) {
			board.setWriter(userVO.getId());
		}
			
			
			
		model.addAttribute("boardVO", board);

	}

	@PostMapping("/board/write")

	// ���ʰ��� �� ���� �� �����ϱ� �ؿ� ó�� �Ⱦ��� �عؿ� ó�� ���
//	public String write(@RequestParam("title") String title, @RequestParam("writer")String writer, @RequestParam("content") String content) {
	public String write(@Valid BoardVO board, BindingResult result) {

		System.out.println(result);
		/*
		if (board.getTitle() == null || board.getTitle().length() == 0) {
			System.out.println("�����߻�");
			return "board/write";
		}
		*/
		
		
		if(result.hasErrors()) {
			System.out.println("�����߻�");
			return "board/write";
			
		}

		boardService.addBoard(board);
		return "redirect:/board";
				
	}
	
	
	

}