package kr.or.eutchapedia.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@RestController
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	//로그인 페이지
	@RequestMapping(value="/loginform")
	public ModelAndView loginPage() {
		ModelAndView mv = new ModelAndView("user/member/login");
		
		return mv;
	}
	
	//로그인 처리
	@RequestMapping(value="/login", method= {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public ModelAndView login(MemberVo memberVo, HttpSession httpSession, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("user/member/login");
		
		memberService.login(memberVo, httpSession);
		
		return mv;
	}

}
