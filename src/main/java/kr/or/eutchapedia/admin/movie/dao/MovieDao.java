package kr.or.eutchapedia.admin.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.StaffInfo;

@Repository
@Mapper
public interface MovieDao {


	List<MovieInfo> getmovieList(Integer page,Integer amount);
	
	
	
	

}
