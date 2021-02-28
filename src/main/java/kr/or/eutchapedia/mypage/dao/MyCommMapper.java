package kr.or.eutchapedia.mypage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.eutchapedia.mypage.entity.CommentVo;

@Mapper
public interface MyCommMapper {
	List<CommentVo> selectComm();

}
