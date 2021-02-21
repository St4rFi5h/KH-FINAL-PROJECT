package kr.or.eutchapedia.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.main.entity.MovieInfoVo;

import kr.or.eutchapedia.main.service.MainMovieDao;

@RestController
public class MainController {
	
	@Autowired
	MainMovieDao dao;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main(String movieDocId) {
		ModelAndView mv = new ModelAndView();
		
//		MovieInfoVo movieInfoVo = dao.selectMovieInfo(movieDocId);
//		List<Map<String, Object>> watchaList = dao.selectWatchaList(movieDocId);
////		List<MovieInfoVo> Movielist = service.getmovieList();
//		List<Map<String, Object>> starDataList = dao.selectStarData(movieDocId);
		
//		mv.addObject("movieInfoVo", movieInfoVo);
//		mv.addObject("starDataList", starDataList);
		List<MovieInfoVo> watchaList = dao.selectWatchaList();
		List<MovieInfoVo> netflixList = dao.selectNetflixList();
		
		mv.addObject("watchaList", watchaList);
		mv.addObject("netflixList", netflixList);
		
		mv.setViewName("user/index_main");
		
		return mv;
	}

}

