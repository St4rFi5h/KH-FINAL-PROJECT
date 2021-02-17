package kr.or.eutchapedia.movie.detail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.movie.detail.domain.MovieInfoVo;
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
		mv.addObject("movieInfoVo", movieInfoVo);
		
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
	
	@RequestMapping("/detail/staff")
	public ModelAndView staffDetail(String staffName) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/staff_detail");
		
		return mv;
	}
	
	@RequestMapping("/comment/overview")
	public ModelAndView commentOverview() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/rating_more");
		
		return mv;
	}
}
