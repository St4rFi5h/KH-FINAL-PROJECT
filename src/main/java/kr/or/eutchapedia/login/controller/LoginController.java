package kr.or.eutchapedia.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.login.model.vo.MemberVo;

@RestController
public class LoginController {
	
	@RequestMapping(value = "/login", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login(MemberVo memberVo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("user/login/login");
		HttpSession session = request.getSession();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		session.setAttribute("email", email);
		session.setAttribute("pwd", pwd);
		
		return mv;
	}
	

}
