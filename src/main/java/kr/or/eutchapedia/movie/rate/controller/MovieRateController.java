package kr.or.eutchapedia.movie.rate.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.login.vo.MemberVo;
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

	/*
	@RequestMapping("/maplist.camp")
	@ResponseBody
	public List<MovierateVo> movies(
			@RequestParam(value = "cp" , required = false, defaultValue = "1") int cp,
				@RequestParam(value = "title",required = false , defaultValue = "제목")String title,
				@RequestParam(value="prodyear",required = false, defaultValue = "년도")String prodyear,
				@RequestParam(value = "nation", required = false, defaultValue = "없음")String nation)
	{		
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		Integer start = (cp-1)*10+1;
		Integer end = start+10-1;
		
		param.put("st",start);
		param.put("en", end);
		param.put("title",title);
		param.put("prodyear",prodyear);
		param.put("nation",nation);

		
		
		return  service.getMovieLists(param);
			
	}
	
	@RequestMapping("/movielist")						
	public ModelAndView movieRate(HttpSession session, Model model,HttpServletRequest req) {
		MemberVo email = (MemberVo)session.getAttribute("email");
		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");
		String field = req.getParameter("f");

	
		return mv;
	}
	 */
	
}
