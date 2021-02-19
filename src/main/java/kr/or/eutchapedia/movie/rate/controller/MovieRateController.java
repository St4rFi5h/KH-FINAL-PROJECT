package kr.or.eutchapedia.movie.rate.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.movie.service.MovieService;
import kr.or.eutchapedia.movierate.entity.MovierateVo;
import kr.or.eutchapedia.movierate.service.MovierateService;





@RequestMapping("/movie")
@RestController
public class MovieRateController {
	private MovieService service;
	
	@RequestMapping("/movierate")
	public ModelAndView movieRate() {
		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");
		List<MovierateVo> movielist = service.getmovieList();
		model.addAttribute("movielist",movielist);
		return mv;
	}

}
