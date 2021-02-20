package kr.or.eutchapedia.admin.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;

@Repository
@Mapper
public interface MovieDao {


	List<MovieInfo> getmovieList(
			@Param("field")String field, 
			@Param("query")String query,
			@Param("page")int page,
			@Param("amount")int amount);

	List<MovieCount> getmovieCount(
			@Param("field")String field,
			@Param("query")String query);

	List<PickInfo> getPickInfoList(@Param("page")int page, @Param("amount")int amount);

}



	
	
	
	

