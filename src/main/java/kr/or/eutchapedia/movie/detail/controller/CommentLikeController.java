package kr.or.eutchapedia.movie.detail.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.or.eutchapedia.movie.detail.domain.LikeVo;
import kr.or.eutchapedia.movie.detail.service.CommentLikeDao;

@RestController
public class CommentLikeController {
	
	@Autowired
	CommentLikeDao dao;

	@RequestMapping(value = "/commentLike", method = RequestMethod.POST)
	public Map<String, Object> pressLike(@RequestParam Map<String, Object> commandMap) {
		Map<String, Object> resultMap = new HashMap<>(); // 값 담아서 보낼 Map
		LikeVo likeVo = new LikeVo();
		 
		int resultCode = 0;
		int likeCheck = 0;
		
		int commentIndex = Integer.parseInt( (String) commandMap.get("commentIndex"));
		
		System.out.println(commentIndex);
		String memberEmail = "kaoo238@naver.com"; // 임시, 나중에는 세션에서 가져오기
		
		commandMap.put("memberEmail", memberEmail); 
		 
		try {
			likeVo = dao.likeCheck(commandMap);
			
			if (likeVo == null) {
				dao.pressLike(commandMap);
				dao.updateLikeCount(commentIndex);
				resultCode = 1;
				likeCheck = 1;
			} else if(likeVo.getLikeCheck() == 0) {
				dao.updateLikeCheck(commandMap);
				dao.updateLikeCount(commentIndex);
				resultCode = 1;
				likeCheck = 1;
			} else if (likeVo.getLikeCheck() == 1) {
				dao.cancelLike(commandMap);
				dao.cancelLikeCount(commentIndex);
				resultCode = 0;
				likeCheck = 0;
			}
			
			resultMap.put("likeCheck", likeCheck);
			resultMap.put("resultCode", resultCode);
			
		} catch (Exception e) {
			e.printStackTrace();
			resultCode = -1;
		}
		
		return resultMap;
	}
}
