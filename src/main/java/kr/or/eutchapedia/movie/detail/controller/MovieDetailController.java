package kr.or.eutchapedia.movie.detail.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/movie")
@RestController
public class MovieDetailController {
	
	@RequestMapping("/detail")
	public ModelAndView movieDetail() {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("user/movie/detail/movie_detail");
		return mv;
	}
}
