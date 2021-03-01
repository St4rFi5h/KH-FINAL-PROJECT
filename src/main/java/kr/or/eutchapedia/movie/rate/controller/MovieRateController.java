package kr.or.eutchapedia.movie.rate.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
	int cp_ = 1;
	@RequestMapping("/movierate")						
	public ModelAndView movieRate(HttpSession session, Model model , HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");

		String genre_ = req.getParameter("f");
		String genre = "액션/스릴러/범죄"; 
		if(genre_ != null && !genre_.equals(""))
			genre = genre_;
		

		String email = (String)session.getAttribute("email");	

		List<MovierateVo> movies = service.getMovieListsS(email,genre);	
		model.addAttribute("movies", movies);
		

		return mv;
	}


	@RequestMapping("/ratelist.do")		
	@ResponseBody
	public List<MovierateVo> movies(

			@RequestParam(value = "cp" , required = false, defaultValue = "1") int cp,
			@RequestParam(value = "gr",required = false , defaultValue = "액션/스릴러/범죄")String genre
			,  HttpServletRequest req)
	{		
		Map<String, Object> param = new HashMap<String, Object>();
	
	
	System.out.println("현재페이지"+cp);


		String genre_ = req.getParameter("f");

		if(genre_ != null && !genre_.equals(""))
			genre = genre_;
		
		
	Integer start = (cp-1)*10+1;
	Integer end = start+10-1;
	System.out.println(start);
	System.out.println(genre);
	System.out.println(end);
	param.put("st",start);
	param.put("en", end);
	param.put("genre",genre);

	System.out.println(param.get("st"));
	System.out.println(param.get("en"));
	System.out.println(genre);
	return  service.getMovieLists(param);



	}


}
