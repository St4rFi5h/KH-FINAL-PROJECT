package kr.or.eutchapedia.board.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.eutchapedia.board.notice.domain.Criteria;
import kr.or.eutchapedia.board.notice.domain.NoticeVo;

@Mapper
public interface NoticeMapper {
	//public List<NoticeVo> boardList() throws Exception;
	public int insertNotice(NoticeVo board) throws Exception;
	public int updateNotice(NoticeVo board) throws Exception;
	public int deleteNotice(int noticeIdx) throws Exception;
	
	public List<NoticeVo> boardList(Criteria cri) throws Exception;
	public int totalCnt() throws Exception;
	public NoticeVo boardDetail(int noticeIdx) throws Exception;
}