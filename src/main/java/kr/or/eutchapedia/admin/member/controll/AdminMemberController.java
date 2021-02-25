package kr.or.eutchapedia.admin.member.controll;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.member.entity.MemberCount;
import kr.or.eutchapedia.admin.member.entity.Memberinfo;
import kr.or.eutchapedia.admin.member.service.MemberselectService;


@RequestMapping("/admin")
@RestController
//셀렉트멤버
public class AdminMemberController {
	@Autowired
	private MemberselectService service;
	
	
	@RequestMapping("/selectmember")
	public ModelAndView selectMember(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/member/selectMember");
		String field_ = req.getParameter("f");
		String query_ = req.getParameter("q");
		String number_ = req.getParameter("p");
		String field = "member_email"; 
		if(field_ != null && !field_.equals(""))
			field = field_;
		String query = "";
		if(query_ != null && !query_.equals(""))
			query = query_;
		int number = 1;
		
		if(number_ != null && !number_.equals(""))
			number = Integer.parseInt(number_);
		int page = 1+(number-1)*10;
		int amount = number*10;
		
		System.out.println(page);
		System.out.println(amount);
		
		System.out.println("여기까지실행됨");
		List<Memberinfo> memberlist = service.getmemberList(field, query, page,amount);
		
		String count = null;
		List<MemberCount> membercount = service.getmemberCount(field,query);
		if(!membercount.isEmpty())
			count = membercount.get(membercount.size() - 1).getNum();
		System.out.println("총 갯수 : " + count);
		
		model.addAttribute("memberlist", memberlist);
		model.addAttribute("count",count);
		
		

		return mv;
		
	}
	
//차단유저	
	@RequestMapping("/blockmember")
	public ModelAndView blockmember() {
		ModelAndView mv = new ModelAndView("admin/member/blockMember");
		return mv;
		
	}
}
