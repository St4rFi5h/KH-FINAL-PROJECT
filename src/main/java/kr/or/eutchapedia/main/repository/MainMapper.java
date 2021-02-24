package kr.or.eutchapedia.main.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.main.entity.MovieInfoVo;


	@Repository
	@Mapper
	public interface MainMapper {

		public MovieInfoVo selectMovieInfo(String movieDocId);
		public List<MovieInfoVo> selectWatchaList();
		public List<MovieInfoVo> selectNetflixList();
		public List<MovieInfoVo> selectSearchList();
		public Map<String, Object> selectStarAvg(String movieDocId);
		public List<Map<String, Object>> selectStarData(String movieDocId);
		

	}