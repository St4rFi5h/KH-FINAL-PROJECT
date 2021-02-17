package kr.or.eutchapedia.main.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {
	
	@RequestMapping(value = "/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("user/index_main");
		
		return mv;
	}
	
	@RequestMapping(value = "/aboutus")
	public ModelAndView aboutus() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("user/aboutus/about_us");
		
		return mv;
	}
}
