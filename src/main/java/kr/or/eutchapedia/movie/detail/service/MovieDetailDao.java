package kr.or.eutchapedia.movie.detail.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.eutchapedia.movie.detail.domain.MovieInfoVo;
import kr.or.eutchapedia.movie.detail.domain.StaffFilmoVo;
import kr.or.eutchapedia.movie.detail.domain.StaffInfoVo;
import kr.or.eutchapedia.movie.detail.repository.MovieDetailMapper;

@Service
@Transactional
public class MovieDetailDao {
	
	@Autowired
	MovieDetailMapper mapper;
	
	// 영화 정보 반환 
	public MovieInfoVo selectMovieInfo(String movieDocId) {
		
		MovieInfoVo movieInfoVo = new MovieInfoVo();
		
		try {
			movieInfoVo = mapper.selectMovieInfo(movieDocId);
			
			String prodYear = movieInfoVo.getProdYear().substring(0, 4);
			movieInfoVo.setProdYear(prodYear);
			
		} catch (Exception e) {                                                                                                                                                                                                                                                                                                                                                                                                                                          
			e.printStackTrace();
		}
		
		return movieInfoVo;
		
	}
	
	// 스태프 List 반환 
	public List<StaffInfoVo> selectStaffInfo(String movieDocId) {

		List<StaffInfoVo> staffList = new ArrayList<>();
		
		try {
			staffList = mapper.selectStaffList(movieDocId);
			
			for (StaffInfoVo s : staffList) {
				if (s.getStaffRole().equals("null")) {
					s.setStaffRole("");
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return staffList;
	}
	
	// staff filmo 반환, 동명이인 문제 해결 완료 
	public List<StaffFilmoVo> selectStaffFilmo(String staffId) {
	
		List<StaffFilmoVo> staffFilmoList = new ArrayList<>();
		
		try {
			staffFilmoList = mapper.selectStaffFilmo(staffId);

			for (StaffFilmoVo s : staffFilmoList) {
				String prodYear = s.getProdYear().substring(0, 4);
				s.setProdYear(prodYear);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return staffFilmoList;
	}
}
