package kr.or.eutchapedia.mypage.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/mypage")
@RestController
public class MyPageCommController {
	
	@RequestMapping("/mycomment")
	public ModelAndView mypageComment() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_comment");
		
		return mv;
	}
	
	@RequestMapping("/myq")
	public ModelAndView mypageQna() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_myq");
		return mv;
	}
	
	

}
