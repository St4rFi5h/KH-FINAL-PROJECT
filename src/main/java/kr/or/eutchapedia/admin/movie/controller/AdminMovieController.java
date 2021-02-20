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

import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;
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
		String number_ = req.getParameter("p");
		String field = "title";
		if(field_ != null && !field_.equals(""))
			field = field_;
		String query = "";
		if(query_ != null && !query_.equals(""))
			query = query_;
		int number = 1;
		
		if(number_ != null && !number_.equals(""))
			number = Integer.parseInt(number_);
		int page = 1+(number-1)*10;
		int amount = number*10;
		
		
		List<MovieInfo> movielist = service.getmovieList(field, query, page,amount);
		
		String count = null;
		List<MovieCount> moviecount = service.getmovieCount(field,query);
		if(!moviecount.isEmpty())
			count = moviecount.get(moviecount.size() - 1).getNum();
		System.out.println("총 갯수 : " + count);
		
		
		
		
		model.addAttribute("movielist", movielist);
		model.addAttribute("count",count);
		return mv;
	}
	
	@RequestMapping("/pickadd/submit")
	public ModelAndView pickAddSubmit(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/admin/pickadd");
		
		String[] a = req.getParameterValues("mid");
		for (int i = 0; i < a.length; i++) {
			System.out.println(a);
		}
		return mv;
	}
	
		
	@RequestMapping("/pickdelete")
	public ModelAndView pickDelete(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/pick-delete");
		String number_ = req.getParameter("p");
        int number = 1;
		
		if(number_ != null && !number_.equals(""))
			number = Integer.parseInt(number_);
		int page = 1+(number-1)*10;
		int amount = number*10;
		
		List<PickInfo> picklist = service.getPickInfoList(page,amount);
		
		String count = null;
		if(!picklist.isEmpty())
			count = picklist.get(picklist.size() - 1).getNum();
		
		System.out.println(picklist.size());
		System.out.println("총 갯수 : " + count);
		model.addAttribute("pickinfo",picklist);
		model.addAttribute("count",count);
		
		
		
		return mv;
		
	}
	@RequestMapping("/commentenroll")
	public ModelAndView commentEnroll() {
		ModelAndView mv = new ModelAndView("admin/movie/comment-enrollment");
		return mv;
		
	}
	@RequestMapping("/commentcansel")
	public ModelAndView commentCansel() {
		ModelAndView mv = new ModelAndView("admin/movie/comment-cansel");
		return mv;
		
	}
	
	@RequestMapping("/moviemanagement")
	public ModelAndView movieManagement(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/dbmanagement");
		String field_ = req.getParameter("f");
		String query_ = req.getParameter("q");
		String number_ = req.getParameter("p");
		String field = "title";
		if(field_ != null && !field_.equals(""))
			field = field_;
		String query = "";
		if(query_ != null && !query_.equals(""))
			query = query_;
		int number = 1;
		
		if(number_ != null && !number_.equals(""))
			number = Integer.parseInt(number_);
		int page = 1+(number-1)*10;
		int amount = number*10;
		
		
		List<MovieInfo> movielist = service.getmovieList(field, query, page,amount);
		
		String count = null;
		List<MovieCount> moviecount = service.getmovieCount(field,query);
		if(!moviecount.isEmpty())
			count = moviecount.get(moviecount.size() - 1).getNum();
		System.out.println("총 갯수 : " + count);
		
		model.addAttribute("movielist", movielist);
		model.addAttribute("count",count);
		
		return mv;
		
	}
	
}
