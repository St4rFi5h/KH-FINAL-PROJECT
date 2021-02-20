package kr.or.eutchapedia.movie.rate.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.movie.entity.PickInfo;
import kr.or.eutchapedia.login.vo.MemberVo;
import kr.or.eutchapedia.movie.rate.service.MovierateService;


@RequestMapping("/movie")
@RestController
public class MovieRateController {
	@Autowired
	private MovierateService service; 
	
	@RequestMapping("/movierate")						
	public ModelAndView movieRate(HttpSession session, Model model,HttpServletRequest req) {
		MemberVo email = (MemberVo)session.getAttribute("email");
		ModelAndView mv = new ModelAndView("user/movie/rating/ratingPage");
		String field = req.getParameter("f");

	
		return mv;
	}

}
