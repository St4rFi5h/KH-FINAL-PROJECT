package kr.or.eutchapedia.admin.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.StaffInfo;

@Mapper
public interface MovieDao {
	@Select("SELECT * FROM MOVIE_INFO")
	List<MovieInfo> getmovieList();
	
	@Select("SELECT * FROM STAFFS_INFO")
	List<StaffInfo> getstaffList();
	
	

}
