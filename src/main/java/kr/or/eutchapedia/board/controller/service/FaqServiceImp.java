package kr.or.eutchapedia.board.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.board.dao.FaqDao;
import kr.or.eutchapedia.board.entity.Faq;
import kr.or.eutchapedia.board.entity.FaqView;

@Service
public class FaqServiceImp implements FaqService{

	@Autowired
	private FaqDao faqDao;

	//페이지 요청
	@Override
	public List<FaqView> getViewList() {
		// TODO Auto-generated method stub
		return getViewList(1, "FAQ_TITLE", ""); ////////오류 확인해보기 
	}
	//검색 요청
	@Override
	public List<FaqView> getViewList(String field, String query) {
		// TODO Auto-generated method stub
		return getViewList(1, field, query);
	}
	
	//페이지 요청
	@Override
	public List<FaqView> getViewList(int page, String field, String query) {
		
		int offset = 1+(page-1)*10;
		int size = page*10;
		
		List<FaqView> list = faqDao.getViewList(offset, size, field, query);
		return list;
	}
	
	//공개여부 
	@Override
	public List<FaqView> getViewPubList(int page, String field, String query) {
		int offset = 1+(page-1)*10;
		int size = page*10;
		
		List<FaqView> list = faqDao.getViewPubList(offset, size, field, query);
		return list;
	}
	
	//목록에 대한 개수
	@Override
	public int getCount() {
		return getCount("FAQ_TITLE", "");
	}
	
	//페이징 없이 검색된 결과의 총 개수
	@Override
	public int getCount(String field, String query) {
		int count = 0;
		
		return faqDao.getCount(field, query);	
		}

	@Override
	public FaqView getView(int faqNo) {
		FaqView faq = faqDao.getView(faqNo);
		return faq;
	}


	@Override
	public int updateAll(int[] pubIds, int[] closeIds) {
		// TODO Auto-generated method stub
		return faqDao.updatePubAll(pubIds, closeIds);
	}

	@Override
	public int deleteAll(int[] ids) {
		int result = 0;
		
		return faqDao.deleteAll(ids);
	}

	@Override
	public void update(Faq faq) {
		// TODO Auto-generated method stub
		faqDao.update(faq);
	}


	@Override
	public void delete(String faqNo) throws Exception{
		// TODO Auto-generated method stub
		 faqDao.delete(faqNo);
	}

	@Override
	public int insert(Faq faq) {
		// TODO Auto-generated method stub
		return faqDao.insert(faq);
	}
	@Override
	public Faq detail(int faqNo) {
		// TODO Auto-generated method stub
		return faqDao.detail(faqNo);
	}
	@Override
	public void pubList(String[] openIds) {
		// TODO Auto-generated method stub
		
	}
	
	
}
