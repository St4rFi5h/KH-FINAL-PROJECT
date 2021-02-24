package kr.or.eutchapedia.admin.movie.service;

import java.util.List;

import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfoDummy;
import kr.or.eutchapedia.admin.movie.entity.PickMovieInfo;


public interface MovieService {
	//pick추가
	List<MovieInfo> getmovieList();
	List<MovieInfo> getmovieList(int page,int amount);
	List<MovieInfo> getmovieList(String field, String query, int page,int amount);
	List<MovieCount> getmovieCount(String field, String query);
	//pick삭제
	List<PickInfo> getPickInfoList(int page, int amount);
	List<PickMovieInfo> getPickMovieList(String pickname1);
	//아이디로 픽박스 불러오기
	List<PickInfo> getPick(String userid);
	int updatePick(int pick, String movieid);
	List<PickInfoDummy> getDummy(String collection, String pickindex);
	int addPick(String userid, String collection_);
	int addPickMovies(String pickindex, String movie);
	int addPickMovies1(String pickindex1, String movie);
	List<PickInfo> getPick();
	List<PickMovieInfo> getPickMovieforId(String pickno, String email, String pickname);
	int chopickDel(String pickno, String docid);


	
	


}
