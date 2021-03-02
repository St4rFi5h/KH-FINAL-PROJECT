package kr.or.eutchapedia.board.controller.service;

import java.util.List;

import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.QnaVO;

public interface QnaService {

	public List<QnaVO> selectBoardList(QnaVO vo, String memberEmail) throws Exception;
	//글 등록 
	public int insertBoard(QnaVO vo)throws Exception ;

	public void updateBoard(QnaVO vo)throws Exception ;

	void deleteBoard(QnaVO vo) throws Exception;
	
	public QnaVO selectBoardByCode(QnaVO vo)throws Exception ;

	QnaVO detail(long qnaNo);

	public int reply(QnaVO vo);

	//수정
	public void update(QnaVO vo);
	
}
