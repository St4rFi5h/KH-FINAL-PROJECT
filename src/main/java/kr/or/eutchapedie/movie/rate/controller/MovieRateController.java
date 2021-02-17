package kr.or.eutchapedie.movie.rate.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MovieRateController {
	
	@RequestMapping(value = "/MovieRate")
	public ModelAndView MovieRate() {
		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");

		return mv;
	}

}
