package kr.or.eutchapedia.board.notice.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	// 글쓰기 폼
	@RequestMapping(value="/insertview")
	public String openInsertForm() throws Exception {
		return "/user/board/notice/notiboard(admin_write)";
	}
	
	// 글 등록
	@RequestMapping("/insert.do")
	public String insertNotice(@ModelAttribute("NoticeVo") NoticeVo board, Model model) throws Exception {
		noticeService.insertNotice(board);
		return "redirect:/notice/list";
	}
	
	// 수정 뷰
	@RequestMapping(value="/update/{noticeNo}", method = RequestMethod.GET)
	public String openUpdateForm(NoticeVo board, Model model) throws Exception {
		model.addAttribute("detail", noticeService.boardDetail(board));
		return "/user/board/notice/notiboard(admin_modify)";
	}
	
	// 수정
	@RequestMapping("/update.do")
	public String updateNotice(HttpServletRequest request) throws Exception {
		NoticeVo board = (NoticeVo)request.getParameterMap();
		
		noticeService.updateNotice(board);
		return "redirect:/notice/list";
	}
	
	@RequestMapping("/list/{noticeIdx}")
	public String boardDetail(NoticeVo board, Model model) throws Exception {
		model.addAttribute("detail", noticeService.boardDetail(board));
		return "redirect:/notice/list";
	}
	
	// 삭제
	@RequestMapping("/delete")
	public String deleteNotice(NoticeVo board) throws Exception {
		noticeService.deleteNotice(board);
		return "redirect:/notice/list";
	}

	
}
