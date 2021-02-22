package kr.or.eutchapedia.movie.detail.repository;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.movie.detail.domain.LikeVo;

@Repository
@Mapper
public interface LikeAndReportMapper {
	public int pressLike(LikeVo likeVo);
}
