package kr.or.eutchapedia.login.controller;

import javax.inject.Inject;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@Controller
@RequestMapping
public class SignupController {

	private final MemberService memberService;

	@Inject
	public SignupController(MemberService memberService) {
		this.memberService = memberService;
	}

	//회원가입 페이지
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signupGET() throws Exception {
		return "/user/member/signup";
	}

	//회원가입 처리 
	@RequestMapping(value = "/signup", method = RequestMethod.POST) 
	public String signupPOST(MemberVo memberVo, RedirectAttributes redirectAttributes) throws Exception { 

		String hashedPw = BCrypt.hashpw(memberVo.getMemberPwd(), BCrypt.gensalt()); 
		memberVo.setMemberPwd(hashedPw); 
		memberService.signup(memberVo); 
		redirectAttributes.addFlashAttribute("msg", "REGISTERED"); 
		return "redirect:/user/member/login"; 

	}
	
	//로그인 임시
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() throws Exception {
		return "/user/member/login";
	}

}
