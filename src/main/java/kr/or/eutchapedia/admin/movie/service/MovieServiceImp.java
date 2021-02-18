package kr.or.eutchapedia.admin.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.admin.movie.dao.MovieDao;
import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.StaffInfo;

@Service
public class MovieServiceImp implements MovieService {
	
	@Autowired
	private MovieDao moviedao;
	
	@Override
	public List<MovieInfo> getmovieList() {
		List<MovieInfo> movielist = moviedao.getmovieList();
		
		return movielist;
	}

	@Override
	public List<MovieInfo> getsearchMovie(String title) {
		List<MovieInfo> searchMovie = moviedao.getsearchMovie(title);
		return searchMovie;
	}

	@Override
	public List<MovieInfo> getmovieList2() {
		List<MovieInfo> movielist = moviedao.getmovieList2();
		return movielist;
	}
	

}
