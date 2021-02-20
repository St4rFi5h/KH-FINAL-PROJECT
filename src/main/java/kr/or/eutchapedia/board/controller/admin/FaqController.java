package kr.or.eutchapedia.board.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.eutchapedia.board.controller.service.FaqService;
import kr.or.eutchapedia.board.entity.Faq;


@Controller("adminFaqController")
@RequestMapping("/user/board/faq/")
public class FaqController {
	
	@Autowired
	private FaqService service;
	
	
	@RequestMapping("faq_list(admin)") 
	public String list(Model model) {
		List<Faq> list = service.getList();
		
		return "/user/board/faq/faq_list(admin)";  
	}
	
	@RequestMapping("faq_edit(admin)") 
	public String edit(Model model) {
		Faq faq = service.get(1);
		return "/user/board/faq/faq_edit(admin)";  
	}
	
	@RequestMapping("faq_reg(admin)") 
	public String reg(Model model) {
		
		return "/user/board/faq/faq_reg(admin)";  
	}
	
	
	
}
