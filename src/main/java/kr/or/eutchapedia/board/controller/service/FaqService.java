package kr.or.eutchapedia.board.controller.service;

import java.util.List;

import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.FaqView;

public interface FaqService {

	// 페이지 요청할 때
	List<FaqView> getViewList();

	// 검색 요청할 때
	List<FaqView> getViewList(String field, String query);

	// 페이지를 요청할 때
	List<FaqView> getViewList(int page, String field, String query);

	int getCount();

	int getCount(String field, String query);

	// 자세한 페이지 요청할 때
	FaqView getView(int faqNo);


	// 일괄공개를 요청할 때
	int updateAll(int[] pubIds, int[] closeIds);

	// 일괄삭제를 요청할 때
	int deleteAll(int[] ids);

	// 수정 페이지를 요청할 때
	int update(Faq faq);

	int delete(int faqNo);

	int insert(Faq faq);
	
}


