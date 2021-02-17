package kr.or.eutchapedia.login.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class FindPasswordController {
	
	@RequestMapping(value = "/findpassword")
	public ModelAndView findpassword() {
		ModelAndView mv = new ModelAndView("user/login/find_password1");
		
		return mv;
	}
	
	@RequestMapping(value = "/findpassword2")
	public ModelAndView findpassword2() {
		ModelAndView mv = new ModelAndView("user/login/find_password2");
				
		return mv;
	}
}
