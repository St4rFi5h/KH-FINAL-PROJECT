package kr.or.eutchapedia.admin.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.admin.movie.dao.MovieDao;
import kr.or.eutchapedia.admin.movie.entity.MovieCount;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfo;
import kr.or.eutchapedia.admin.movie.entity.PickInfoDummy;
import kr.or.eutchapedia.admin.movie.entity.PickMovieInfo;

@Service
public class MovieServiceImp implements MovieService {
	
	@Autowired
	private MovieDao moviedao;
	//픽추가
	@Override
	public List<MovieInfo> getmovieList() {
		
		return getmovieList("title","",1,10);
	}

	@Override
	public List<MovieInfo> getmovieList(int page,int amount) {
		// TODO Auto-generated method stub
		return getmovieList("title","",page,amount);
	}

	@Override
	public List<MovieInfo> getmovieList(String field, String query, int page,int amount) {
		List<MovieInfo> movielist = moviedao.getmovieList(field,query,page,amount);
		return movielist;
	}

	@Override
	public List<MovieCount> getmovieCount(String field, String query) {
		List<MovieCount> moviecount = moviedao.getmovieCount(field,query);
		return moviecount;
	}
	//픽삭제
	@Override
	public List<PickInfo> getPickInfoList(int page, int amount) {
		List<PickInfo> picklist = moviedao.getPickInfoList(page,amount);
		return picklist;
	}

	@Override
	public List<PickMovieInfo> getPickMovieList(String pickname1) {
		List<PickMovieInfo> getpickmovie = moviedao.getPickMovieList(pickname1);
		return getpickmovie;
	}
	//id로 픽박스불러오기
	@Override
	public List<PickInfo> getPick(String userid) {
		List<PickInfo> getpick = moviedao.getPick(userid);
		return getpick;
	}

	@Override
	public int updatePick(int pick,String movieid) {
		int updatepick = moviedao.updatePick(pick,movieid);
		return updatepick;
	}

	@Override
	public List<PickInfoDummy> getDummy(String collection, String pickindex) {
		List<PickInfoDummy> getdummy = moviedao.getDummy(collection,pickindex);
		return getdummy;
	}

	@Override
	public int addPick(String userid, String collection_) {
		int addpick = moviedao.addPick(userid,collection_);
		return addpick;
	}

	@Override
	public int addPickMovies(String pickindex, String movie) {
		int addpickmovies = moviedao.addPickMovies(pickindex,movie);
		return addpickmovies;
	}

	@Override
	public List<PickInfo> getPick() {
		List<PickInfo> getpick = moviedao.getPick();
		return getpick;
	}

	@Override
	public int addPickMovies1(String pickindex1, String movie) {
		int addpickmovies1 = moviedao.addPickMovies1(pickindex1,movie);
		return addpickmovies1;
	}

	@Override
	public List<PickMovieInfo> getPickMovieforId(String pickno, String email, String pickname) {
		List<PickMovieInfo> pickmovies = moviedao.getPickMovieforId(pickno,email,pickname);
		return pickmovies;
	}

	@Override
	public int chopickDel(String pickno, String docid) {
		int chopickdel = moviedao.chopickDel(pickno,docid);
		return chopickdel;
	}


	

	

	
	

	
	

}
