package kr.or.eutchapedia.movie.rate.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.movie.rate.entity.MovierateVo;
import kr.or.eutchapedia.movie.rate.service.MovierateService;


@RequestMapping("/movie")
@RestController
public class MovieRateController {
	@Autowired
	private MovierateService service; 
	
	@RequestMapping("/movierate")						
	public ModelAndView movieRate(HttpSession session, Model model) {
		
	
		String email = (String)session.getAttribute("email");


		List<MovierateVo> movies = service.getMovieLists(email);
		model.addAttribute("movies", movies);

		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");
		return mv;
	}
	
	
	@RequestMapping("/ratelist.do")		
	@ResponseBody
	public List<MovierateVo> movies(
			@RequestParam(value = "cp" , required = false, defaultValue = "1") int cp,
				@RequestParam(value = "gr",required = false , defaultValue = "전체")String genre)
	{		
		
		Map<String, Object> param = new HashMap<String, Object>();
		System.out.println("현재페이지"+cp);
	//널값 1로  일단 현제 기본값이없음String start_=
		
		Integer start = (cp-1)*10+1;
		Integer end = start+10-1;
		param.put("st",start);
		param.put("en", end);
		param.put("genre",genre);

		System.out.println(param.get("st"));
		System.out.println(param.get("en"));
		System.out.println(genre);
		return  service.getMovieLists(param);
			
		
		
	}
	
	
}
