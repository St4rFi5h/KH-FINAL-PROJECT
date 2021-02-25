package kr.or.eutchapedia.movie.detail.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.eutchapedia.main.entity.StarRatingVo;
import kr.or.eutchapedia.movie.detail.repository.StarRatingMapper;

@Service
@Transactional
public class StarRatingDao {
	
	@Autowired
	StarRatingMapper mapper;
	
	public int rateStars(StarRatingVo starRatingVo) {
		int result = 0;
		
		try {
			result = mapper.rateStars(starRatingVo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
