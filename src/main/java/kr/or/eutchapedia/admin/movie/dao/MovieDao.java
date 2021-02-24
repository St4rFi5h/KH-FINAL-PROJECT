package kr.or.eutchapedia.admin.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfoDummy;
import kr.or.eutchapedia.admin.movie.entity.PickMovieInfo;

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

	List<PickMovieInfo> getPickMovieList(String pickname1);

	List<PickInfo> getPick(String userid);

	int updatePick(@Param("pick")int pick ,@Param("movieid")String movieid);

	List<PickInfoDummy> getDummy(@Param("collection")String collection,@Param("pickindex")String pickindex);

	int addPick(@Param("userid")String userid,@Param("collection_")String collection_);

	int addPickMovies(@Param("pickindex")String pickindex,@Param("movie")String movie);

	List<PickInfo> getPick();

	int addPickMovies1(@Param("pickindex1")String pickindex1, @Param("movie")String movie);

	List<PickMovieInfo> getPickMovieforId(@Param("pickno")String pickno,@Param("email")String email,@Param("pickname")String pickname);

	int chopickDel(@Param("pickno")String pickno,@Param("docid")String docid);

}



	
	
	
	

