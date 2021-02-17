package kr.or.eutchapedia.mypage.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/mypage")
@RestController
public class MypageController {
	
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
	
	
}





