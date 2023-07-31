package kr.co.mlec.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.mlec.member.service.MemberService;
import kr.co.mlec.member.vo.MemberVO;

@SessionAttributes("userVO")
@Controller
public class MemberController {

		@Autowired
		private MemberService memberService;
	
		@GetMapping("/login")
		public String loginForm() {
			return "login/login";
		}
		
		
		@PostMapping("login")
//		public String login(MemberVO member, HttpSession session) {
			public String login(MemberVO member, Model model) {  //���� ������Ʈ��
			
			MemberVO userVO = memberService.login(member);
			if(userVO == null) {
				//�α��� ����
				return "login/login";
			}
			//�α��� ����
		     model.addAttribute("userVO", userVO);
//			session.setAttribute("userVO", userVO);
//			System.out.println(member);
			
			return"redirect:/";
		}
		
		@GetMapping("/logout")
//		public String logout(HttpSession session) {
			public String logout(SessionStatus status ) {
			
			status.setComplete();
//			session.invalidate();
			
			return "redirect:/";
		}
		
}