package kr.or.eutchapedia.board.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.eutchapedia.board.notice.domain.Criteria;
import kr.or.eutchapedia.board.notice.domain.NoticeVo;
import kr.or.eutchapedia.board.notice.domain.Paging;
import kr.or.eutchapedia.board.notice.service.NoticeService;

@RequestMapping("/notice")
@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;

	@RequestMapping("/list")
	public String boardList(Criteria cri, Model model) throws Exception {
		List<NoticeVo> list = noticeService.boardList(cri);
		int total = noticeService.totalCnt(cri);

		model.addAttribute("list", list);
		model.addAttribute("paging", new Paging(cri, total));
		return "/user/board/notice/notiboard";
	}

	// 등록 화면 호출
	@RequestMapping("/insert")
	public String openInsertForm() {
		return "/user/board/notice/notiboard(admin_write)";
	}
	
	// 등록 기능 
	@RequestMapping("/insert.do")
	public String insertNotice(NoticeVo board) throws Exception {
		noticeService.insertNotice(board);
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/update/{noticeIdx}")
	public String openUpdateForm(@PathVariable int noticeIdx, Model model) throws Exception {
		model.addAttribute("detail", noticeService.boardDetail(noticeIdx));
		return "redirect:/notice/update";
	}
	
	@RequestMapping("/update.do")
	public String updateNotice(HttpServletRequest request) throws Exception {
		NoticeVo board = (NoticeVo)request.getParameterMap();

		noticeService.updateNotice(board);
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/list/{noticeIdx}")
	public String boardDetail(@PathVariable int noticeIdx, Model model) throws Exception {
		model.addAttribute("detail", noticeService.boardDetail(noticeIdx));
		return "redirect:/list";
	}
	
	@RequestMapping("/delete/{noticeIdx}")
	public String deleteNotice(@PathVariable int noticeIdx) throws Exception {
		noticeService.deleteNotice(noticeIdx);
		return "redirect:/notice/list";
	}

	
}
