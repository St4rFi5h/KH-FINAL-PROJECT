package kr.or.eutchapedia.movie.rate.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.movie.rate.entity.MovierateVo;
@Repository
@Mapper
public interface MovierateDao {

	List<MovierateVo> getMovieLists(String email);
	List<MovierateVo> getmovierateList(String email, String genre );

}
