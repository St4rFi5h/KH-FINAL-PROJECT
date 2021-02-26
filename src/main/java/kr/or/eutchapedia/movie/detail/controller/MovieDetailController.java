package kr.or.eutchapedia.movie.detail.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.movie.detail.domain.MovieInfoVo;
import kr.or.eutchapedia.movie.detail.domain.StaffFilmoVo;
import kr.or.eutchapedia.movie.detail.domain.StaffInfoVo;
import kr.or.eutchapedia.movie.detail.service.MovieDetailDao;

@RequestMapping("/movie")
@RestController
public class MovieDetailController {
	
	@Autowired
	MovieDetailDao movieDetailDao;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView movieDetail(String movieDocId, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		String memberEmail = (String) session.getAttribute("memberEmail");
		if (memberEmail != null) {
			Map<String, Object> map = new HashMap<>();
			map.put("movieDocId", movieDocId);
			map.put("memberEmail", memberEmail);
			int wannaWatchCheck = movieDetailDao.selectWannaWatch(map);
			mv.addObject("wannaWatchCheck", wannaWatchCheck);
			
			double ratedStars = movieDetailDao.checkRatedStars(map);
			
			if (Double.valueOf(ratedStars) != null) {
				System.out.println(ratedStars);
				mv.addObject("ratedStars", ratedStars);
			}
		}
		
		MovieInfoVo movieInfoVo = movieDetailDao.selectMovieInfo(movieDocId);
		List<StaffInfoVo> staffList = movieDetailDao.selectStaffList(movieDocId);
		Map<String, Object> starAvgMap = movieDetailDao.selectStarAvg(movieDocId);
		List<Map<String, Object>> starDataList = movieDetailDao.selectStarData(movieDocId);
		List<Map<String, Object>> commentList = movieDetailDao.selectComments(movieDocId);
		movieDetailDao.updateHitCount(movieDocId);
		
		mv.addObject("movieInfoVo", movieInfoVo);
		mv.addObject("staffList", staffList);
		mv.addObject("starAvgMap", starAvgMap);
		mv.addObject("starDataList", starDataList);
		mv.addObject("commentList", commentList);
		
		mv.setViewName("/user/movie/detail/movie_detail");
		
		return mv;
	}
	
	@RequestMapping("/detail/overview")
	public ModelAndView movieDetailOverview(String movieDocId) {
		ModelAndView mv = new ModelAndView();
		
		MovieInfoVo movieInfoVo = movieDetailDao.selectMovieInfo(movieDocId);
		
		mv.addObject("movieInfoVo", movieInfoVo);
		
		mv.setViewName("/user/movie/detail/movie_more_info");
		
		return mv;
	}
	
	@RequestMapping(value = "/detail/staff", method = RequestMethod.GET)
	public ModelAndView staffDetail(String staffId) {
		ModelAndView mv = new ModelAndView();
		
		List<StaffFilmoVo> staffFilmoList = movieDetailDao.selectStaffFilmo(staffId);
		String staffName = staffFilmoList.get(0).getStaffName();
		String staffRole = staffFilmoList.get(0).getStaffRoleGroup();	
		
		mv.addObject("staffFilmoList", staffFilmoList);
		mv.addObject("staffName", staffName);
		mv.addObject("staffRole", staffRole);
		
		mv.setViewName("/user/movie/detail/staff_detail");
		
		return mv;
	}
	
}
