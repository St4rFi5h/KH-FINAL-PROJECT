package kr.or.eutchapedia.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.mypage.entity.CommVo;
import kr.or.eutchapedia.mypage.service.MyCommService;

@RequestMapping("/mypage")
@RestController
public class MyPageCommController {
	
	@Autowired
	MyCommService service;
	
	@RequestMapping("/mycomment")
	public ModelAndView mypageComment(CommVo commVo, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<CommVo> commentList = service.commentList();
		mv.addObject("commentList", commentList);
		mv.setViewName("/user/mypage/mypage_mycomment");
		return mv;
	}
	
	@RequestMapping("/myq")
	public ModelAndView mypageQna() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_myq");
		return mv;
	}
	
	

}
