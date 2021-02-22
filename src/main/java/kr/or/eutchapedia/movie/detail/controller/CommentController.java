package kr.or.eutchapedia.movie.detail.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.movie.detail.domain.CommentPage;
import kr.or.eutchapedia.movie.detail.service.CommentDao;

@RequestMapping("/comment")
@RestController
public class CommentController {

	@Autowired
	CommentDao commentDao;

	@RequestMapping(value = "/overview", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView commentOverview(CommentPage page) {
		ModelAndView mv = new ModelAndView(); 
		
		Map<String, Object> map = commentDao.selectCommentList(page);
		
		mv.addObject("commentList", map.get("commentList"));
		mv.addObject("commentCount", map.get("commentCount"));
		mv.addObject("movieDocId", map.get("movieDocId"));
		mv.addObject("page", page);
		
		mv.setViewName("/user/movie/detail/rating_more");
		
		return mv;
	}
	
	@RequestMapping(value = "/ajaxcontrol", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> commentAjax(@RequestBody Map<String, Object> data) {
		
		CommentPage page = new CommentPage();
		page.setMovieDocId((String) data.get("movieDocId"));
		page.setNowPage(Integer.parseInt((String) data.get("nowPage")));
		page.setSortBy((String) data.get("sortBy"));
		
		Map<String, Object> map = commentDao.selectCommentList(page);
		System.out.println(map.toString());
		
		return map;
		
	}
}
