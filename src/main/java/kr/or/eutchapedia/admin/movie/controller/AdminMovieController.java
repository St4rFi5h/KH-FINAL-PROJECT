package kr.or.eutchapedia.admin.movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.service.MovieService;

@RequestMapping("/admin")
@RestController
public class AdminMovieController {
	
	@Autowired
	private MovieService service;
	
	@RequestMapping("/adminhome")
	public ModelAndView AdminHome() {
		ModelAndView mv = new ModelAndView("admin/movie/dashboard");
		return mv;
		
	}
	@RequestMapping("/pickadd")
	public ModelAndView pickAdd(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/pick-add");
		
		String field_ = req.getParameter("f");
		String query_ = req.getParameter("q");
		String field = "title_";
		if(field_ != null)
			field = field_;
		
		String query = "";
		if(query_ != null)
			query = query_;
		
		
		Integer page_ = 1;
		Integer page = (1+(page_-1)*10);
		Integer amount = (page_ * 10);
		System.out.println(page);
		System.out.println(amount);
		
		List<MovieInfo> movielist = service.getmovieList(page,amount);
		
		
		model.addAttribute("movielist", movielist);
		return mv;
	}
	@RequestMapping("/pickadd/search")
	public ModelAndView pickAddSearch(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/pick-add");
		return mv;
	}
		
	@RequestMapping("/pickdelete")
	public ModelAndView pickDelete() {
		ModelAndView mv = new ModelAndView("admin/movie/pick-delete");
		return mv;
		
	}
	@RequestMapping("/commentmanagement")
	public ModelAndView commentManagement() {
		ModelAndView mv = new ModelAndView("admin/movie/comment-enrollment");
		return mv;
		
	}
	@RequestMapping("/moviemanagement")
	public ModelAndView movieManagement(Model model) {
		ModelAndView mv = new ModelAndView("admin/movie/dbmanagement");
		return mv;
		
	}
	@RequestMapping("/moviemanagement/search")
	public ModelAndView movieManagementSearch(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/dbmanagement");
		return mv;
		
	}
}
