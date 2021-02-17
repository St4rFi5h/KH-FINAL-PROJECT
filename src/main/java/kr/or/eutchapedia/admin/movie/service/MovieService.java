package kr.or.eutchapedia.admin.movie.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.eutchapedia.admin.movie.entity.MovieInfo;
import kr.or.eutchapedia.admin.movie.entity.StaffInfo;


public interface MovieService {

	List<MovieInfo> getmovieList();

	List<StaffInfo> getstaffList();

}
