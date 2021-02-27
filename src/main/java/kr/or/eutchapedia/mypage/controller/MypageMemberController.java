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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.StarRatingForMainVo;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;
import kr.or.eutchapedia.mypage.service.MypageService;

@RequestMapping("/mypage")
@RestController
public class MypageMemberController {
	
	@Autowired
	MypageService service;
	
	@Autowired
	ServletContext ctx;
	
		
	@RequestMapping("/ratedmovies_member")
	public ModelAndView mypageratedmovies(String id) {
		ModelAndView mv = new ModelAndView();
		
		List <StarRatingForMainVo> list = new ArrayList<StarRatingForMainVo>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		graphMap = service.getStarNumDesc(id);
	
		list = service.getratinginfo(id);
		
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
		String key = list.get(0).getMemberEmail();
		
		mv.addObject("id", key);
		mv.addObject("list", list);
		mv.addObject("point", graphMap);
		mv.setViewName("/user/mypage/mypage_ratedmoviesfinal_member");
		return mv;
	}
	
	@RequestMapping(value="/wannawatch_member", method= RequestMethod.GET)
	public ModelAndView mypageiwantosee(@RequestParam String id, @RequestParam int sort) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println( "아이디는" +id);
		System.out.println( "솔트값은" +sort);
		String sortTitle="";
		
		List <WannaWatchVo> list = new ArrayList<WannaWatchVo>();
		
		switch (sort) {
		case 1 :
			list = service.wannawatch1(id);
			sortTitle = "가나다순";
			break;
		case 2 :
			list = service.wannawatch2(id);
			sortTitle = "신작순";
			break;
		case 3 :
			list = service.wannawatch3(id);
			sortTitle = "구작순";
			break;
		case 4 :
			list = service.wannawatch4(id);
			sortTitle = "담은순";
			break;
		}
		
		String key = list.get(0).getMemberEmail();
		
		mv.addObject("id", key);
		mv.addObject("sortTitle", sortTitle);
		mv.addObject("list", list);
		mv.setViewName("/user/mypage/mypage_iwanttosee_member");
		return mv;
	}
	
	
	
	@RequestMapping(value="/index_member", method= RequestMethod.GET)
	public ModelAndView mypagemember(String id) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println(id);
		List<WannaWatchVo> ww = new ArrayList<WannaWatchVo>();
		List<StarRatingForMainVo> sr = new ArrayList<StarRatingForMainVo>();
		MemberVo vo = new MemberVo();
		
		Map<String,Object> mostRatedStar = new HashMap<String,Object>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		List<Map<String,Object>> doughnutMap = new ArrayList<Map<String, Object>>();
		
		vo = service.getMemberinfo(id);
		ww = service.wannawatch(id);
		sr = service.getratinginfo(id);
		mostRatedStar = service.getmostRatedStar(id);
		graphMap = service.getStarNum(id);
		doughnutMap = service.getdoughnutNum(id);
		
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
		mv.setViewName("/user/mypage/mypage2");
		return mv;
		
	}
	
}




