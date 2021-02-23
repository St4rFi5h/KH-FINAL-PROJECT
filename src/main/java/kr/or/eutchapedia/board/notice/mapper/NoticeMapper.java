package kr.or.eutchapedia.board.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.eutchapedia.board.notice.domain.Criteria;
import kr.or.eutchapedia.board.notice.domain.NoticeVo;

@Mapper
public interface NoticeMapper {
	public void insertNotice(NoticeVo board) throws Exception;
	public void updateNotice(NoticeVo board) throws Exception;
	public void deleteNotice(NoticeVo board) throws Exception;
	
	public List<NoticeVo> boardList(Criteria cri) throws Exception;
	public int totalCnt() throws Exception;
	public NoticeVo boardDetail(NoticeVo board) throws Exception;
}