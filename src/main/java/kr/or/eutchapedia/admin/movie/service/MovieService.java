package kr.or.eutchapedia.admin.movie.service;

import java.util.List;

import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;


public interface MovieService {
	//pick추가
	List<MovieInfo> getmovieList();
	List<MovieInfo> getmovieList(int page,int amount);
	List<MovieInfo> getmovieList(String field, String query, int page,int amount);
	List<MovieCount> getmovieCount(String field, String query);
	//pick삭제
	List<PickInfo> getPickInfoList(int page, int amount);


	
	


}
