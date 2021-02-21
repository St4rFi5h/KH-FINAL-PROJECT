package kr.or.eutchapedia.board.notice.service;

import java.util.List;

import kr.or.eutchapedia.board.notice.domain.Criteria;
import kr.or.eutchapedia.board.notice.domain.NoticeVo;

public interface NoticeService {

	public int insertNotice(NoticeVo board) throws Exception;
	public int updateNotice(NoticeVo board) throws Exception;
	public int deleteNotice(int noticeIdx) throws Exception;
	
	public List<NoticeVo> boardList(Criteria cri) throws Exception;
	public int totalCnt(Criteria cri) throws Exception;
	public NoticeVo boardDetail(int noticeIdx) throws Exception;
}
