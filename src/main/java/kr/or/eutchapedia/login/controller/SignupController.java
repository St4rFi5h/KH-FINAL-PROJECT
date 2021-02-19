package kr.or.eutchapedia.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@RestController
public class SignupController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/form")
	public ModelAndView signupPage() {
		ModelAndView mv = new ModelAndView("user/member/signup");
		
		return mv;
	}
	
	//회원가입 컨트롤러
	@RequestMapping(value="/signup", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView signup(MemberVo memberVo) {
		ModelAndView mv = new ModelAndView("user/main");
		//회원가입 메서드
		System.out.println(memberService.signup(memberVo));
		
		return mv;
	}
	
}
