package kr.or.eutchapedia.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.StarRatingForMainVo;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;
import kr.or.eutchapedia.mypage.salt.Utils;
import kr.or.eutchapedia.mypage.service.MypageService;

@RequestMapping("/mypage")
@RestController
public class MypageController {
	
	@Autowired
	MypageService service;
	
	@RequestMapping("/index")
	public ModelAndView mypageindex(String memberemail) {
		ModelAndView mv = new ModelAndView();
		
		memberemail = "200@naver.com";
		List<WannaWatchVo> ww = new ArrayList<WannaWatchVo>();
		List<StarRatingForMainVo> sr = new ArrayList<StarRatingForMainVo>();
		MemberVo vo = new MemberVo();
		Map<String,Object> mostRatedStar = new HashMap<String,Object>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		List<Map<String,Object>> doughnutMap = new ArrayList<Map<String, Object>>();
		
		vo = service.getMemberinfo(memberemail);
		ww = service.wannawatch(memberemail);
		sr = service.getratinginfo(memberemail);
		mostRatedStar = service.getmostRatedStar(memberemail);
		graphMap = service.getStarNum(memberemail);
		doughnutMap = service.getdoughnutNum(memberemail);
		
		// 보고싶어요 개수
		
		int wannacount  = ww.size();
		
		// 별점영역필요로직
		int ratedStarNum = sr.size(); //평가개수 
		
		float avg = 0; 
		float point = 0;
		float pointsum = 0;
		
		for(int i=0; i<sr.size(); i++) {
			point = Float.parseFloat(sr.get(i).getStarRating());
			pointsum += point;
		}
		
		avg = pointsum / ratedStarNum; //별점평균
		
		// 별점개수뽑아보자
		for(int i=0; i<graphMap.size(); i++) {
			
			System.out.println(graphMap.get(i).get("starRating")  );
			System.out.println( graphMap.get(i).get("starCount")  );
		}
		
		for(int i=0; i<sr.size(); i++) {
			point = Float.parseFloat(sr.get(i).getStarRating());
			pointsum += point;
		}
		
        // 영화감상시간계산로직
		int sum=0; 
		int time=0;
		
		for(int i=0; i<sr.size(); i++) {
			time = Integer.parseInt(sr.get(i).getMovieRunningTime());
			sum += time;
		}
		int hour = sum / 60;
		int minute = sum % 60; 
		
		System.out.println(hour +" 시간 " + minute +" 분 ");
		System.out.println(mostRatedStar.get("star"));
		
		mv.addObject("member", vo);
		mv.addObject("wannawatch", ww);
		mv.addObject("star", sr);
		mv.addObject("hour", hour);
		mv.addObject("minute", minute);
		mv.addObject("wannacount", wannacount);
		mv.addObject("ratedStarNum", ratedStarNum);
		mv.addObject("mostRatedStar", mostRatedStar);
		mv.addObject("avg", avg);
		mv.addObject("graphMap", graphMap);
		mv.addObject("doughnutMap", doughnutMap);
		mv.setViewName("/user/mypage/mypage");
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
		
		memberemail = "200@naver.com";
	
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





