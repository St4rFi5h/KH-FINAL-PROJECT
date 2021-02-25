package kr.or.eutchapedia.movie.detail.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.movie.detail.domain.CommentPage;
import kr.or.eutchapedia.movie.detail.service.CommentDao;

@RequestMapping("/comment")
@RestController
public class CommentController {

	@Autowired
	CommentDao commentDao;

	@RequestMapping(value = "/overview", method= RequestMethod.GET)
	public ModelAndView commentOverview(CommentPage page) {
		ModelAndView mv = new ModelAndView(); 
		
		Map<String, Object> map = commentDao.selectCommentList(page);
		String movieDocId = (String) map.get("movieDocId");
		String title = commentDao.selectMovieTitle(movieDocId);

		mv.addObject("commentList", map.get("commentList"));
		mv.addObject("commentCount", map.get("commentCount"));
		mv.addObject("movieDocId", movieDocId);
		mv.addObject("page", page);
		mv.addObject("title", title);
		
		mv.setViewName("/user/movie/detail/rating_more");
		
		return mv;
	}
	
}
