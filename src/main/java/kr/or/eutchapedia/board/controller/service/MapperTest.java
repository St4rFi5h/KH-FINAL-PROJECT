package kr.or.eutchapedia.board.controller.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.eutchapedia.board.dao.FaqDao;
import kr.or.eutchapedia.board.entity.Faq;

@SpringBootTest
public class MapperTest {
	
	@Autowired
	private FaqDao faqDao;

	@Test
	public void testInsert() {
		Faq faq = new Faq();
		faq.setFaqTitle("111테스트다");
		faq.setFaqContent("111테스트라구요");
		faq.setFaqNo(10);
		faq.setFaqPub(1);
		faq.setMemberEmail("admin@admin.com");
		
		int result = faqDao.insert(faq);
		System.out.println("result================>" + result);
	}
}
