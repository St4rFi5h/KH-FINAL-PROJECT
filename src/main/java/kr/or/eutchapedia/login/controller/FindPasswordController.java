package kr.or.eutchapedia.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.login.service.MemberService;
import kr.or.eutchapedia.login.vo.MemberVo;

@RestController
public class FindPasswordController {
	
	@Autowired
	private MemberService memberService;
	
	
//	@RequestMapping(value = "/findpassword")
//	public String findpassword(MemberVo memberVo, Model model) {
//		
//		MemberVo member = null;
//		member = memberService.findpwd(memberVo);
//		System.out.println(memberVo);
//		System.out.println(member);
//		
//		if(member = null) {
//			model.addAttribute("msg", "이메일이 일치하는 사용자가 없습니다.");
//			return "user/member/find_password1";
//		} else {
//			String pwd = member.getMemberPwd();
//			String email = member.getMemberEmail();
//			return "user/member/find_password2";
//		}
//			
//	}
	
	@RequestMapping(value = "/findpassword2")
	public ModelAndView findpassword2() {
		ModelAndView mv = new ModelAndView("user/member/find_password2");
				
		return mv;
	}
	
	@RequestMapping(value = "/findpassword3")
	public ModelAndView findpassword3() {
		ModelAndView mv = new ModelAndView("user/member/find_password3");
				
		return mv;
	}
	

	@RequestMapping(value = "/findpasswordcomplete")
	public ModelAndView findpasswordcomplete() {
		ModelAndView mv = new ModelAndView("user/member/find_password_complete");
				
		return mv;
	}
}
