package kr.or.eutchapedia.board.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.board.notice.domain.Criteria;
import kr.or.eutchapedia.board.notice.domain.NoticeVo;
import kr.or.eutchapedia.board.notice.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public int insertNotice(NoticeVo board) throws Exception {
		return noticeMapper.insertNotice(board);
	}

	@Override
	public int updateNotice(NoticeVo board) throws Exception {
		return noticeMapper.updateNotice(board);
	}

	@Override
	public int deleteNotice(int noticeIdx) throws Exception {
		return noticeMapper.deleteNotice(noticeIdx);
	}

	@Override
	public List<NoticeVo> boardList(Criteria cri) throws Exception {
		return noticeMapper.boardList(cri);
	}

	@Override
	public int totalCnt() throws Exception {
		return noticeMapper.totalCnt();
	}

	@Override
	public NoticeVo boardDetail(int noticeIdx) throws Exception {
		return noticeMapper.boardDetail(noticeIdx);
	}





}
