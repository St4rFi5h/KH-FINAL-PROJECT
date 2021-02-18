package kr.or.eutchapedia.movierate.dao;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


import kr.or.eutchapedia.movierate.entity.MovierateVo;
@Repository
@Mapper
public class MovierateDao {
	List<MovierateVo> getmovieList();
}
