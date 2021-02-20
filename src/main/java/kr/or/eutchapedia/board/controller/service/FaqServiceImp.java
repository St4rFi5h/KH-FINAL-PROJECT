package kr.or.eutchapedia.board.controller.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.board.dao.FaqDao;
import kr.or.eutchapedia.board.entity.Faq;

@Service
public class FaqServiceImp implements FaqService{

	@Autowired
	private FaqDao faqDao;
	
	@Override
	public List<Faq> getList() {
		
		List<Faq> list = faqDao.getList();
		return list;
	}

	@Override
	public Faq get(int faqNo) {
		Faq faq = faqDao.get(faqNo);
		return faq;
	}

}
