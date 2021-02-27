package kr.or.eutchapedia.mypage.service;

import java.util.List;

import kr.or.eutchapedia.mypage.entity.CommVo;

public interface MyCommService {

	public List<CommVo> commentList() throws Exception;

}
