package kr.or.eutchapedia.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
	@Autowired
	ServletContext ctx;
	
	@RequestMapping("/index")
	public ModelAndView mypageindex(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		String memberemail = (String) session.getAttribute("memberEmail");
		List<WannaWatchVo> ww = new ArrayList<WannaWatchVo>();
		List<StarRatingForMainVo> sr = new ArrayList<StarRatingForMainVo>();
		MemberVo vo = new MemberVo();
		Map<String,Object> mostRatedStar = new HashMap<String,Object>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		List<Map<String,Object>> doughnutMap = new ArrayList<Map<String, Object>>();
		
		ww = service.wannawatch(memberemail);
		sr = service.getratinginfo(memberemail);
		vo = service.getMemberinfo(memberemail);
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
		
		String avg2 = String.format("%.2f", avg); //별점평균 소수점 두자리까지 표시
		
		// 별점개수뽑아보자
		for(int i=0; i<graphMap.size(); i++) {
			
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
		
//		System.out.println("포토유알엘" +vo.getMemberPhoto());
		
		int size = ww.size();
		int ratesize = sr.size();
		
		mv.addObject("size", size);
		mv.addObject("ratesize", ratesize);
		mv.addObject("member", vo);
		mv.addObject("wannawatch", ww);
		mv.addObject("star", sr);
		mv.addObject("hour", hour);
		mv.addObject("minute", minute);
		mv.addObject("wannacount", wannacount);
		mv.addObject("ratedStarNum", ratedStarNum);
		mv.addObject("mostRatedStar", mostRatedStar);
		mv.addObject("avg", avg2);
		mv.addObject("graphMap", graphMap);
		mv.addObject("doughnutMap", doughnutMap);
		mv.setViewName("/user/mypage/mypage");
		return mv;
	}

	@RequestMapping("/ratedmovies")
	public ModelAndView mypageratedmovies(HttpSession session, int sort) {
		ModelAndView mv = new ModelAndView();
		String memberemail = (String) session.getAttribute("memberEmail");
		String sortTitle="";
		
		System.out.println(sort);
		List <StarRatingForMainVo> list = new ArrayList<StarRatingForMainVo>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		graphMap = service.getStarNumDesc(memberemail);
	
		switch (sort) {
		case 1 :
			list = service.getratinginfo1(memberemail);
			sortTitle = "가나다순";
			break;
		case 2 :
			list = service.getratinginfo2(memberemail);
			sortTitle = "구작순";
			break;
		case 3 :
			list = service.getratinginfo3(memberemail);
			sortTitle = "신작순";
			break;
		case 4 :
			list = service.getratinginfo4(memberemail);
			sortTitle = "러닝타임순";
			break;
		}
		

		
		/*test..
		List<StarRatingForMainVo> test = new ArrayList<StarRatingForMainVo>();
		
		float[] point = new float[10];
		float minPoint = (float) 0.5; 
			for (int i=0 ; i<point.length; i++) {
				point[i] = minPoint;
				minPoint += 0.5;
				
			}
		
		test = service.getEachStarMovie(memberemail,point);
		*/
		mv.addObject("sortTitle", sortTitle);
		mv.addObject("list", list);
		mv.addObject("point", graphMap);
		mv.setViewName("/user/mypage/mypage_ratedmoviesfinal");
		return mv;
	}
	
	@RequestMapping(value="/wannawatch", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypageiwantosee(HttpSession session, int sort) {
		ModelAndView mv = new ModelAndView();
		
		String memberemail = (String) session.getAttribute("memberEmail");
		String sortTitle="";
		
		System.out.println(sort);
		List <WannaWatchVo> list = new ArrayList<WannaWatchVo>();
		//System.out.println(memberemail);
		
		switch (sort) {
		case 1 :
			list = service.wannawatch1(memberemail);
			sortTitle = "가나다순";
			break;
		case 2 :
			list = service.wannawatch2(memberemail);
			sortTitle = "신작순";
			break;
		case 3 :
			list = service.wannawatch3(memberemail);
			sortTitle = "구작순";
			break;
		case 4 :
			list = service.wannawatch4(memberemail);
			sortTitle = "담은순";
			break;
		}
		
	
		mv.addObject("sortTitle", sortTitle);
		mv.addObject("list", list);
		mv.setViewName("/user/mypage/mypage_iwanttosee");
		return mv;
	}
	
	
	@RequestMapping("/starviewmore")
	public ModelAndView mypagestarviewmore() {
		ModelAndView mv = new ModelAndView("/user/mypage/mypage_starviewmore");
		
		return mv;
	}
	

	// 닉네임 중복 체크
	@RequestMapping(value="/nicknamechk", method=RequestMethod.POST)
	@ResponseBody
	public int nicknamechk(String memberNickname) throws Exception {
		int count = 0;

		count =  service.nicknamechk(memberNickname);
			
		System.out.println(count);
		return count;
	}
	

	/*
	@RequestMapping("/signup")
	public ModelAndView mypagesignup() {
		ModelAndView mv = new ModelAndView("/user/mypage/unUse/encryptionforsignup");
		
		return mv;
	}
	
	@RequestMapping(value="/signup.do", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mypagesignupdo(MemberVo vo) {
		ModelAndView mv = new ModelAndView();
		Utils utils = new Utils();
		vo.setMemberPwdSalt(utils.getSalt());
		vo.setMemberPwd(utils.getEncrypt(vo.getMemberPwd(), vo.getMemberPwdSalt()));
		
		service.signupdo(vo);
		
	    mv = new ModelAndView("/user/mypage/unUse/encryptionforsignupdone");//임시
		return mv;
	}

	*/
	
}




