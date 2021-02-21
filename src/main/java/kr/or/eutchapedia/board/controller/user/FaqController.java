package kr.or.eutchapedia.board.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.eutchapedia.board.controller.service.FaqService;
import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.FaqView;
import oracle.net.ano.Service;


@Controller
@RequestMapping("/user/board/faq/")
public class FaqController {
	
	@Autowired
	private FaqService service;
	
	@RequestMapping("faq_list") 
	public String list(Model model) {
				
		List<FaqView> list = service.getViewList();
		model.addAttribute("list", list);
		
		return "/user/board/faq/faq_list";  
	}
	
}
