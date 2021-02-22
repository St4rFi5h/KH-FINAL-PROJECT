package kr.or.eutchapedia.movie.rate.service;

import java.util.List;
import java.util.Map;

import kr.or.eutchapedia.login.vo.MemberVo;
import kr.or.eutchapedia.movie.rate.entity.MovierateVo;

public interface MovierateService {

	List<MovierateVo> getMovieLists(String email);
	List<MovierateVo> getmovierateList(String email, String genre );






}
