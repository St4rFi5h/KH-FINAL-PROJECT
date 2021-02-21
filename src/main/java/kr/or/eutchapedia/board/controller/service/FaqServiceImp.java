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


	@Override
	public List<FaqView> getViewList() {
		// TODO Auto-generated method stub
		return getViewList(1, "title", ""); ////////오류 확인해보기 
	}

	@Override
	public List<FaqView> getViewList(String field, String query) {
		// TODO Auto-generated method stub
		return getViewList(1, field, query);
	}

	@Override
	public List<FaqView> getViewList(int page, String field, String query) {
		
		int size = 10;
		int offset = 0+(page-1)*size;
		
		List<FaqView> list = faqDao.getViewList(offset, size, field, query);
		return list;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return getCount("title", "");
	}

	@Override
	public int getCount(String field, String query) {
		// TODO Auto-generated method stub
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
		// TODO Auto-generated method stub
		return faqDao.deleteAll(ids);
	}

	@Override
	public int update(Faq faq) {
		// TODO Auto-generated method stub
		return faqDao.update(faq);
	}

	@Override
	public int delete(int faqNo) {
		// TODO Auto-generated method stub
		return faqDao.delete(faqNo);
	}

	@Override
	public int insert(Faq faq) {
		// TODO Auto-generated method stub
		return faqDao.insert(faq);
	}

}
