package kr.or.eutchapedia.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.mypage.dao.MyCommMapper;
import kr.or.eutchapedia.mypage.entity.CommentVo;

@Service
public class MyCommServiceImpl implements MyCommService{
	
	@Autowired
	private MyCommMapper myCommMapper;

	@Override
	public List<CommentVo> selectComm() {
		return myCommMapper.selectComm();
	}





}
