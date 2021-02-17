package kr.or.eutchapedia.movie.detail.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.eutchapedia.movie.detail.domain.MovieInfoVo;
import kr.or.eutchapedia.movie.detail.repository.MovieDetailMapper;

@Service
@Transactional
public class MovieDetailDao {
	
	@Autowired
	MovieDetailMapper mapper;
	
	// 영화 정보 반환 
	public MovieInfoVo selectMovieInfo(String movieDocId) {
		
		System.out.println("영화정보 select start");
		
		MovieInfoVo movieInfoVo = null;
		
		try {
			movieInfoVo = mapper.selectMovieInfo(movieDocId);
			
			if (movieInfoVo != null) {
				System.out.println("select 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return movieInfoVo;
		
	}

}
