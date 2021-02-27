package kr.or.eutchapedia.board.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.eutchapedia.board.controller.service.FaqService;
import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.FaqView;
import oracle.net.ano.Service;


@Controller
@RequestMapping("/user/board/faq")
public class FaqController {
	
	@Autowired
	private FaqService service;
	
	@RequestMapping("/faq_list") 
	public String list(Model model, HttpServletRequest request) {
	       
	String field_ = request.getParameter("f");
    String query_ = request.getParameter("q");
    String page_ = request.getParameter("p");
    
    String field = "FAQ_TITLE";
    if(field_ != null && !field_.equals(""))
       field = field_;
    
    String query = "";
    if(query_ != null && !query_.equals(""))
       query = query_;

    int page = 1;
    if(page_ != null && !page_.equals(""))
       page = Integer.parseInt(page_);
    
    
    List<FaqView> list = service.getViewPubList(page, field, query);
    int count = service.getCount(field, query);
    //추가
    model.addAttribute("list", list);
    model.addAttribute("count", count);
    //추가 
    return "/user/board/faq/faq_list";  
	}
	
}
