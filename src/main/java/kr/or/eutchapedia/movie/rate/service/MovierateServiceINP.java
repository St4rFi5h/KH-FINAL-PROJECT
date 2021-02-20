package kr.or.eutchapedia.movie.rate.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.movie.rate.dao.MovierateDao;
import kr.or.eutchapedia.movie.rate.entity.MovierateVo;
@Service
public class MovierateServiceINP implements MovierateService {
	@Autowired
	private MovierateDao dao; 

	
	@Override //목록출력
	public List<MovierateVo> getmovierateList(String email, String genre ) {
		List<MovierateVo> movielist = dao.getmovierateList(email, genre );
		
		return movielist;
	}
	
	
	 
}
