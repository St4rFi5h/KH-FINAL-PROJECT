package kr.or.eutchapedia.movie.detail.controller;

import java.util.List;
import java.util.Map;

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
	MovieDetailDao dao;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView movieDetail(String movieDocId) {
		ModelAndView mv = new ModelAndView();
		
		MovieInfoVo movieInfoVo = dao.selectMovieInfo(movieDocId);
		List<StaffInfoVo> staffList = dao.selectStaffList(movieDocId);
		Map<String, Object> starAvgMap = dao.selectStarAvg(movieDocId);
		List<Map<String, Object>> starDataList = dao.selectStarData(movieDocId);
		dao.updateHitCount(movieDocId);
		
		mv.addObject("movieInfoVo", movieInfoVo);
		mv.addObject("staffList", staffList);
		mv.addObject("starAvgMap", starAvgMap);
		mv.addObject("starDataList", starDataList);
		
		mv.setViewName("/user/movie/detail/movie_detail");
		
		return mv;
	}
	
	@RequestMapping("/detail/overview")
	public ModelAndView movieDetailOverview(String movieDocId) {
		ModelAndView mv = new ModelAndView();
		
		MovieInfoVo movieInfoVo = dao.selectMovieInfo(movieDocId);
		
		mv.addObject("movieInfoVo", movieInfoVo);
		
		mv.setViewName("/user/movie/detail/movie_more_info");
		
		return mv;
	}
	
	@RequestMapping(value = "/detail/staff", method = RequestMethod.GET)
	public ModelAndView staffDetail(String staffId) {
		ModelAndView mv = new ModelAndView();
		
		List<StaffFilmoVo> staffFilmoList = dao.selectStaffFilmo(staffId);
		String staffName = staffFilmoList.get(0).getStaffName();
		String staffRole = staffFilmoList.get(0).getStaffRoleGroup();	
		
		mv.addObject("staffFilmoList", staffFilmoList);
		mv.addObject("staffName", staffName);
		mv.addObject("staffRole", staffRole);
		
		mv.setViewName("/user/movie/detail/staff_detail");
		
		return mv;
	}
	
	@RequestMapping("/comment/overview")
	public ModelAndView commentOverview() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/rating_more");
		
		return mv;
	}
	
	// 모달 확인용(임시) 
	@RequestMapping("/detail/member")
	public ModelAndView movieDetailMember() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/movie_detail_member");
		
		return mv;
	}
}
