package kr.or.eutchapedia.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.or.eutchapedia.board.entity.Faq;

@Mapper
public interface FaqDao {

	@Select("select * from faq")
	List<Faq> getList();
	Faq get(int faqNo);

}
