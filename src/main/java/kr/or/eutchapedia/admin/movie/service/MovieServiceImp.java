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
	public List<MovieInfo> getmovieList(Integer page,Integer amount) {
		List<MovieInfo> movielist = moviedao.getmovieList(page,amount);
		return movielist;
	}

	
	

}
