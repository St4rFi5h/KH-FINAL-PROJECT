package kr.or.eutchapedia.movie.detail.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.eutchapedia.movie.detail.domain.LikeVo;
import kr.or.eutchapedia.movie.detail.repository.LikeAndReportMapper;

@Service
@Transactional
public class LikeAndReportDao {
	
	@Autowired
	LikeAndReportMapper mapper;
	
	public int pressLike(LikeVo likeVo) {
		int result = 0;
		
		try {
			likeVo.setMemberEmail("kaoo238@naver.com");
			System.out.println(likeVo.getMemberEmail());
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
}
