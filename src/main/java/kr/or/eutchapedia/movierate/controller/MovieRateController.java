package kr.or.eutchapedia.movierate.controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;




@RequestMapping("/aaaa")
@RestController
public class MovieRateController {
	
	@RequestMapping("/movierate")
	public ModelAndView movieRate() {
		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");
		return mv;
	}

}
