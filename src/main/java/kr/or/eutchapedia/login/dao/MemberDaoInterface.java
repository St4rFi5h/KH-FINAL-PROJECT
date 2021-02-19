package kr.or.eutchapedia.login.dao;

import java.sql.SQLException;

import kr.or.eutchapedia.login.vo.MemberVo;

public interface MemberDaoInterface {
	
	//회원가입
	int signup(MemberVo memberVo) throws SQLException;
}
