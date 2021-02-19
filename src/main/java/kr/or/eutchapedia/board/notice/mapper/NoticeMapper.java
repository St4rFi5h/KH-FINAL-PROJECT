package kr.or.eutchapedia.board.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.eutchapedia.board.notice.domain.NoticeVo;

@Mapper
public interface NoticeMapper {
	List<NoticeVo> selectList() throws Exception;
}