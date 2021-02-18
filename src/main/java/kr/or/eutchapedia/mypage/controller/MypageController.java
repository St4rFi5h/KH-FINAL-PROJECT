package kr.or.eutchapedia.mypage.controller;

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
public class MypageController {
	
	@Autowired
	MypageService service;
	
	@RequestMapping("/index")
	//okok
	public ModelAndView mypageindex() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage");
		
		return mv;
	}
	
	@RequestMapping("/index_member")
	//okok
	public ModelAndView mypagemember() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_member");
		
		return mv;
	}
	
	@RequestMapping("/wannawatch")
	//okok
	public ModelAndView mypageiwantosee() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_iwanttosee");
		
		return mv;
	}
	
	@RequestMapping("/ratedmovies")
	//okok
	public ModelAndView mypageratedmovies() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_ratedmoviesfinal");
		
		return mv;
	}
	
	@RequestMapping("/starviewmore")
	//okok
	public ModelAndView mypagestarviewmore() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_starviewmore");
		
		return mv;
	}
	
	@RequestMapping("/edit")
	//okok
	public ModelAndView mypageeditprofile() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_editprofile(ver3)");
		
		return mv;
	}
	
	@RequestMapping("/editsocial")
	//okok
	public ModelAndView mypageeditprofilesocial() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_editprofile_social");
		
		return mv;
	}
	
	@RequestMapping("/withdraw")
	//okok
	public ModelAndView mypagewithdraw(String[] complains, String pwd) {
		
//		for(String complain : complains) {
//			System.out.println(complain);
//		}
//		
		
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_withdraw");
		
		return mv;
	}
	
	//탈퇴do
	@RequestMapping(value="/withdraw.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypagewithdrawdo(MemberVo vo, LeaveMemberVo vo2) {
		
		service.withdrawdo(vo,vo2);

		
		ModelAndView mv = new ModelAndView("/user/mypage/mypage");//임시
		
		return mv;
	}
	
	//탈퇴페이지 비밀번호 확인 ajax
	@RequestMapping(value="/passChk", method= RequestMethod.POST)
	public int mypagepassChk(MemberVo vo) {
		System.out.println(vo.getMemberEmail());
		System.out.println("비밀번호는 :" +vo.getMemberPwd());
		int result = service.passchk(vo);
		System.out.println(result);
		
		return result;
	}

	
}





