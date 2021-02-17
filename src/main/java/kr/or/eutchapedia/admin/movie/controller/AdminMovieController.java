package kr.or.eutchapedia.admin.movie.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.StaffInfo;
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
	public ModelAndView pickAdd(Model model) {
		ModelAndView mv = new ModelAndView("admin/movie/pick-add");
		List<MovieInfo> movielist = service.getmovieList();
		
		model.addAttribute("movielist", movielist);
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
