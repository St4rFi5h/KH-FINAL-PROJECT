package kr.or.eutchapedia.board.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.board.notice.domain.NoticeVo;
import kr.or.eutchapedia.board.notice.service.NoticeService;

@RequestMapping("/notice")
@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/list")
	public ModelAndView openNoticeList() throws Exception {
		ModelAndView mv = new ModelAndView("user/board/notice/notiboard");
		List<NoticeVo> list = noticeService.selectList();
		mv.addObject("list", list);
		return mv;
	}
	

}
