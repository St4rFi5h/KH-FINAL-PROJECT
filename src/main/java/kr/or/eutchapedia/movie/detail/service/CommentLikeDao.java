package kr.or.eutchapedia.movie.detail.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.eutchapedia.movie.detail.domain.LikeVo;
import kr.or.eutchapedia.movie.detail.repository.CommentLikeMapper;

@Service
@Transactional
public class CommentLikeDao {
	
	@Autowired
	CommentLikeMapper mapper;
	
	// 해당 사용자가 좋아요 누른 적 있는지 확인 
	public int likeCheck(String memberEmail) {
		int result = 0;
		
		try {
			mapper.likeCheck(memberEmail);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 최초 좋아요 
	public int pressLike(LikeVo likeVo) {
		int result = 0;
		
		try {
			likeVo.setMemberEmail("kaoo238@naver.com");
			result = mapper.pressLike(likeVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(result);
		
		return result;
		
	}
	
	public void updateLikeCount(int commentIndex) {
		try {
			mapper.updateLikeCount(commentIndex);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 좋아요 취소 
	public void cancelLike(LikeVo likeVo) {
		try {
			mapper.cancelLike(likeVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 좋아요 취소 시 코멘트 좋아요 숫자 내리기 
	public void cancelLikeCount(int commentIndex) {
		try {
			mapper.cancelLikeCount(commentIndex);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 좋아요 눌렀던 적 있는 회원이 다시 좋아요 누르면 
	public void updateLikeCheck(LikeVo likeVo) {
		try {
			mapper.updateLikeCheck(likeVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
 