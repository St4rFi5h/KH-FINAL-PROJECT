package kr.or.eutchapedia.login.service;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.login.controller.Utils;
import kr.or.eutchapedia.login.dao.MemberDaoInterface;
import kr.or.eutchapedia.login.vo.MemberVo;

@Service
public class MemberService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private MemberDaoInterface memberDao;
	private Utils utils;
	
//회원가입
	public int signup(MemberVo memberVo) {
		
		int resultCnt = 0;
		
		memberDao = sqlSession.getMapper(MemberDaoInterface.class);
		try {
			utils = new Utils();
			memberVo.setMemberPwdSalt(utils.getSalt());
			resultCnt = memberDao.signup(memberVo);
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return resultCnt;
	}
}