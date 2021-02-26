package kr.or.eutchapedia.mypage.controller;



import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.service.MypageService;

@RequestMapping("/mypage")
@RestController
public class MypageWithdrawController {
	
	@Autowired
	MypageService service;
	
	@Autowired
	ServletContext ctx;
	
		
	@RequestMapping("/withdraw")
	public ModelAndView mypagewithdraw(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String memberemail = (String) session.getAttribute("memberEmail");
		
		mv.addObject("memberemail", memberemail);	
		mv.setViewName("/user/mypage/mypage_withdraw");
		return mv;
	}
	
	//탈퇴do
	@RequestMapping(value="/withdraw.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypagewithdrawdo(MemberVo vo, LeaveMemberVo vo2, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		
		System.out.println("reason1="+vo2.getReason1()+" reason2="+vo2.getReason2() +" reason3="+vo2.getReason3() +" reason4="+vo2.getReason4());
	
		int result= service.withdrawdo(vo,vo2);
		
		if(result==1) {
			session.invalidate();
			mv.setViewName("/user/mypage/mypage_withdrawdone");
			
		}
		else {
			mv.addObject("pwdchk", result);	
			mv.setViewName("/user/mypage/mypage_withdraw");
		}
				
		return mv;
	}

	
}




