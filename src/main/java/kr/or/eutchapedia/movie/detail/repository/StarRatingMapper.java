package kr.or.eutchapedia.movie.detail.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.main.entity.StarRatingVo;

@Repository
@Mapper
public interface StarRatingMapper {
	public int rateStars(StarRatingVo starRatingVo);
}
