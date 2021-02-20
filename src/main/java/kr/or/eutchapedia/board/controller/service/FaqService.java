package kr.or.eutchapedia.board.controller.service;

import java.util.List;

import kr.or.eutchapedia.board.entity.Faq;

public interface FaqService {

	List<Faq> getList();

	Faq get(int i);

}
