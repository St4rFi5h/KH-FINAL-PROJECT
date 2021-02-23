package kr.or.eutchapedia.board.notice.service;

import java.util.List;

import kr.or.eutchapedia.board.notice.domain.Criteria;
import kr.or.eutchapedia.board.notice.domain.NoticeVo;

public interface NoticeService {

	public void insertNotice(NoticeVo board) throws Exception;
	public void updateNotice(NoticeVo board) throws Exception;
	public void deleteNotice(NoticeVo board) throws Exception;
	
	public List<NoticeVo> boardList(Criteria cri) throws Exception;
	public int totalCnt(Criteria cri) throws Exception;
	public NoticeVo boardDetail(NoticeVo board) throws Exception;
}
