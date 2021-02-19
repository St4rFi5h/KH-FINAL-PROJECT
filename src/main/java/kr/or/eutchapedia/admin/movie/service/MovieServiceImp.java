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

	

	

	
	

	
	

}
