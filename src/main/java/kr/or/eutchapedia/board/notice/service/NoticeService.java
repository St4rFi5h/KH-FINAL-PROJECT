package kr.or.eutchapedia.board.notice.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.or.eutchapedia.board.notice.domain.NoticeVo;

public interface NoticeService {

	List<NoticeVo> selectList() throws Exception;
	
}
