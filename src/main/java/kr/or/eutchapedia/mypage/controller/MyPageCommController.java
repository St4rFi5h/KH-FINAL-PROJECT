package kr.or.eutchapedia.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.mypage.entity.CommentVo;
import kr.or.eutchapedia.mypage.service.MyCommService;

@RequestMapping("/mypage")
@Controller
public class MyPageCommController {
	@Autowired
	MyCommService service;
	
	@RequestMapping("/myq")
	public ModelAndView mypageQna() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_myq");
		return mv;
	}
	
	@RequestMapping("/mycomment")
	public String selectComment(Model model) {
		List<CommentVo> list = service.selectComm();
		model.addAttribute("list", list);
		return "/user/mypage/mypage_comment";
	}

	
	
	
	

}
