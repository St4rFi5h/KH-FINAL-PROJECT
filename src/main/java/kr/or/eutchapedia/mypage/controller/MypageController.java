package kr.or.eutchapedia.mypage.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;
import kr.or.eutchapedia.mypage.salt.Utils;
import kr.or.eutchapedia.mypage.service.MypageService;

@RequestMapping("/mypage")
@RestController
public class MypageController {
	
	@Autowired
	MypageService service;
	
	@RequestMapping("/index")
	public ModelAndView mypageindex() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage");
		
		return mv;
	}
	
	@RequestMapping("/index_member")
	public ModelAndView mypagemember() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_member");
		
		return mv;
	}
	
	@RequestMapping(value="/wannawatch", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypageiwantosee(String memberemail) {
		ModelAndView mv = new ModelAndView();
		
		memberemail = "100@naver.com";  //임시..추후엔 세션으로 받아와야겠지../
	
		List <WannaWatchVo> list = new ArrayList<WannaWatchVo>();
		System.out.println(memberemail);
		list = service.wannawatch(memberemail);
		
		mv.addObject("list", list);
		mv.setViewName("/user/mypage/mypage_iwanttosee");
		return mv;
	}
	
	@RequestMapping("/ratedmovies")
	public ModelAndView mypageratedmovies() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_ratedmoviesfinal");
		
		return mv;
	}
	
	@RequestMapping("/starviewmore")
	public ModelAndView mypagestarviewmore() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_starviewmore");
		
		return mv;
	}
	
	@RequestMapping("/edit")
	public ModelAndView mypageeditprofile() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_editprofile(ver3)");
		
		return mv;
	}
	
	@RequestMapping("/editsocial")
	public ModelAndView mypageeditprofilesocial() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_editprofile_social");
		
		return mv;
	}
	
	@RequestMapping("/withdraw")
	public ModelAndView mypagewithdraw() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_withdraw");
		
		return mv;
	}
	
	//탈퇴do
	@RequestMapping(value="/withdraw.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypagewithdrawdo(MemberVo vo, LeaveMemberVo vo2) {
		ModelAndView mv = new ModelAndView();
		
//		Utils utils = new Utils();
//		String pwd = utils.getEncrypt(vo.getMemberPwd());
//		vo.setMemberPwd(pwd);
		
		System.out.println(vo.getMemberEmail());
		System.out.println(vo.getMemberPwd());
		System.out.println("reason1="+vo2.getReason1()+" reason2="+vo2.getReason2() +" reason3="+vo2.getReason3() +" reason4="+vo2.getReason4());
	
		int result= service.withdrawdo(vo,vo2);
		
		if(result==1) {
			//세션invalid추가하기
			mv.setViewName("/user/mypage/mypage_withdrawdone");
			
		}
		else {
			mv.addObject("pwdchk", result);	
			mv.setViewName("/user/mypage/mypage_withdraw");
		}
				
		return mv;
	}

	
	@RequestMapping("/signup")
	public ModelAndView mypagesignup() {
		ModelAndView mv = new ModelAndView("/user/mypage/encryptionforsignup");
		
		return mv;
	}
	
	@RequestMapping(value="/signup.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypagesignupdo(MemberVo vo) {
		ModelAndView mv = new ModelAndView();
		Utils utils = new Utils();
		vo.setMemberPwdSalt(utils.getSalt());
		vo.setMemberPwd(utils.getEncrypt(vo.getMemberPwd(), vo.getMemberPwdSalt()));
		
		service.signupdo(vo);
		
	    mv = new ModelAndView("/user/mypage/encryptionforsignupdone");//임시
		return mv;
	}

	
}





