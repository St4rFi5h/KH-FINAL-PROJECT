package kr.or.eutchapedia.admin.movie.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/admin")
@RestController
public class AdminMovieController {

	@RequestMapping("/adminhome")
	public ModelAndView AdminHome() {
		ModelAndView mv = new ModelAndView("admin/movie/dashboard");
		return mv;
		
	}
	@RequestMapping("/pickadd")
	public ModelAndView pickAdd() {
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
	public ModelAndView movieManagement() {
		ModelAndView mv = new ModelAndView("admin/movie/dbmanagement");
		return mv;
		
	}
}
