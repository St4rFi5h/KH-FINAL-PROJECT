package kr.or.eutchapedia.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.FaqView;

@Mapper
public interface FaqDao {
	//페이지 요청할 때 
	List<FaqView> getViewList(int offset, int size, String field, String query);
	int getCount(String field, String query);	
	//자세한 페이지 요청할 때 
	FaqView getView(int faqNo);
	
	//게시글 수정
	int update(Faq faq);
	//게시글 작성
	int insert(Faq faq);
	//게시글 삭제
	int delete(int faqNo);

	//일괄삭제 요청할 때
	int deleteAll(int[] ids);
	//일괄공개 
	int updatePubAll(int[] pubIds, int[] closeIds);
	
}
