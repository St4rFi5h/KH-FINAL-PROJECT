package kr.or.eutchapedia.movie.detail.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.or.eutchapedia.movie.detail.domain.LikeVo;
import kr.or.eutchapedia.movie.detail.service.CommentLikeDao;

@RestController
public class CommentLikeController {
	
	@Autowired
	CommentLikeDao dao;
	
	@RequestMapping(value = "/commentLike", method = RequestMethod.POST)
	public Map<String, Object> pressLike(int commentIndex) {
		LikeVo likeVo = new LikeVo();
		likeVo.setCommentIndex(commentIndex);
		Map<String, Object> resultMap = new HashMap<>();
		
		int result = dao.pressLike(likeVo);
		dao.updateLikeCount(commentIndex);
		
		
		return resultMap;
		
	}
}
