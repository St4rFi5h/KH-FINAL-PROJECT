package kr.or.eutchapedia.mypage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.eutchapedia.mypage.entity.CommVo;

@Mapper
public interface MyCommMapper {

	public List<CommVo> commentList() throws Exception;

}
