package kr.or.eutchapedia.admin.movie.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfoDummy;
import kr.or.eutchapedia.admin.movie.entity.PickMovieInfo;
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
	@RequestMapping("/pickadd/submit")
	public ModelAndView pickAddSubmit(Model model,HttpServletRequest req,HttpServletResponse res) throws UnsupportedEncodingException {
		ModelAndView mv = new ModelAndView();
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
		System.out.println(field);
		System.out.println(query);
		System.out.println(number);

		String userid = "jhlee@naver.com";
//		String userid = "kaoo238@naver.com";
		String collection_ = req.getParameter("cbname");
		String[] movieids = req.getParameterValues("mid");
		List<PickInfo> getpick = service.getPick();
		System.out.println(getpick);
		int pickandemail = 0;
		String collection = null;
		String pickindex = null;
		List<String> pickmlist = new ArrayList<>();
		for (int j = 0; j < getpick.size(); j++) {
			System.out.println("if문진입전");
			System.out.println("for문번호 = " + j);
			System.out.println("등록한pick이름 ="+collection_);
			System.out.println("등록한아이디 = " +userid);
			System.out.println("비교할컬렉션이름 = "+getpick.get(j).getPickName());
			System.out.println("비교할이메일 = "+getpick.get(j).getFkMemberEmail());
			if(collection_.equals(getpick.get(j).getPickName()) && userid.equals(getpick.get(j).getFkMemberEmail()))
			{
				System.out.println("첫번째for문 if진입");
				collection = getpick.get(j).getPickName();
				pickindex = getpick.get(j).getPickIndex();
				List<PickInfoDummy> getdummy = service.getDummy(collection,pickindex);
				System.out.println(collection);
				System.out.println(pickindex);
				pickandemail = 1;
				//픽박스에같은이름이 존재하면 해당픽박스에 영화추가 update
				for(int i = 0; i<movieids.length;i++) {
					System.out.println("두번째for문");
					String movieid;
					movieid = movieids[i];
					System.out.println(movieid);
					int t = 0;
					for(int k = 0; k<getdummy.size(); k++) {
							System.out.println(getdummy.get(k).getFkMovieDocid().contains(movieid));
							if(getdummy.get(k).getFkMovieDocid().contains(movieid)) {
								t++;
							}
					}
					if(t == 0) {
						pickmlist.add(movieid);
					}
								
						
				}
			}
			

		}
		if(pickandemail == 1) {
			for(int m = 0; m<pickmlist.size();m++) {
				String movie = pickmlist.get(m);
				int addpickmovies = service.addPickMovies(pickindex,movie);
			}
		}
		if(pickandemail == 0) {
			int addpick = service.addPick(userid,collection_);
			List<PickInfo> getpick1 = service.getPick();
			String pickindex1 = null;
			if( !getpick1.isEmpty() ) {
				pickindex1 = getpick1.get(getpick1.size() - 1).getPickIndex();
			}
			for(int m = 0;m<movieids.length;m++) {
				String movie;
				movie = movieids[m];
				int addpickmovies1 = service.addPickMovies1(pickindex1,movie);
				System.out.println("어디픽인지 = "+pickindex1);
				System.out.println("컬럼만들고 영화주입 = "+addpickmovies1);
				
			}
			
		}
		





		mv.setViewName("redirect:/admin/pickadd?p="+number
				+"&q="+java.net.URLEncoder.encode(query, "utf-8")
				+"&f="+field);
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
	
	
	
	
		model.addAttribute("movielist", movielist);
		model.addAttribute("count",count);
		return mv;
	}
	@RequestMapping("/pickdelete")
	public ModelAndView pickDelete(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/pick-delete");
		String number_ = req.getParameter("p");
		String pickno = req.getParameter("pickno");
		String email = req.getParameter("em");
		String pickname = req.getParameter("pn");
		System.out.println("pickname"+pickname);
		int number = 1;

		if(number_ != null && !number_.equals(""))
			number = Integer.parseInt(number_);
		int page = 1+(number-1)*10;
		int amount = number*10;

		List<PickInfo> picklist = service.getPickInfoList(page,amount);

		String count = null;
		if(!picklist.isEmpty())
			count = picklist.get(picklist.size() - 1).getNum();
		if(pickname != null) {
			
			List<PickMovieInfo> pickmovies = service.getPickMovieforId(pickno,email,pickname);
			model.addAttribute("pickmovies", pickmovies);
		}
		
		
		model.addAttribute("pickinfo",picklist);

		model.addAttribute("count",count);
		



		return mv;

	}
	@RequestMapping("/pickdelete/delmovie")
	public ModelAndView pickDelete(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView();
		String pickno = null;
		String docid = null;
		String[] dellist = req.getParameterValues("list");
		for (int i = 0; i < dellist.length; i++) {
			String[] split = null;
			split = dellist[i].split(",");
			for(int j = 0; j<split.length; j++) {
				
				if(j == 0) {
					pickno = split[j];
				}
				if(j == 1) {
					docid = split[j];
					int chopickdel = service.chopickDel(pickno,docid);
					
				}
				
				
			}
		}
				
			
		mv.setViewName("redirect:/admin/pickdelete");
				
		
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
	@RequestMapping("/moviemanagement/delete")
	public ModelAndView movieManagementDelete(Model model,HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("admin/movie/dbmanagement");

		String[] a = req.getParameterValues("del");
		for (int i = 0; i < a.length; i++) {
			System.out.println(a[i]);
		}


		return mv;

	}



}
