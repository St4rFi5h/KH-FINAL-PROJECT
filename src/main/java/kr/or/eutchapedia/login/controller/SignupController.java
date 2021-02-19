package kr.or.eutchapedia.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@RestController
public class SignupController {
	
	@Autowired
	private MemberService memberService;
	
	//회원가입 컨트롤러
	@RequestMapping(value="signup", method = {RequestMethod.POST,RequestMethod.GET})
	public String signup(MemberVo memberVo) {
		
		Utils utils = new Utils();
		
		String result = utils.getEncrypt("1234", "3891c9104e6fa5ca2367");
		
		//회원가입 메서드
		memberService.signup(memberVo);
		
		return "redirect:/user/member/signsup";
	}
	
}
