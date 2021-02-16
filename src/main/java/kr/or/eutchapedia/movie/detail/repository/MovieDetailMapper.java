package kr.or.eutchapedia.movie.detail.repository;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.movie.detail.domain.MovieInfoVo;

@Repository
@Mapper
public interface MovieDetailMapper {
	public MovieInfoVo selectMovieInfo(String movieDocId);
}
