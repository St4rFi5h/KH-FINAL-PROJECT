package kr.or.eutchapedia.board.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.board.notice.service.NotiBoardDao;

@RequestMapping("/notice")
@Controller
public class NotiBoardController {
	
	@Autowired
	private NotiBoardDao dao;
	
	@RequestMapping(value = "/notiList.do", method = RequestMethod.GET)
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("user/board/notice/notiboard");
		return mv;
	}
	
	@RequestMapping(value = "/noti_write", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView notiWrite() {
		ModelAndView mv = new ModelAndView("user/board/notice/notiboard(admin_write)");
		return mv;
	}
	
	@RequestMapping(value = "/noti_modify", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView notiModify() {
		ModelAndView mv = new ModelAndView("user/board/notice/notiboard(admin_modify)");
		return mv;
	}
	
	
	
	
	




}
