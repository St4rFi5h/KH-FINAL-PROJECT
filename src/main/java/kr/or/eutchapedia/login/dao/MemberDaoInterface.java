package kr.or.eutchapedia.login.dao;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.login.vo.MemberVo;

@Repository
@Mapper
public interface MemberDaoInterface {
	
	//회원가입
	int signup(MemberVo memberVo) throws SQLException;
	
	//이메일 중복 체크
	int emailchk(MemberVo memberVo) throws Exception;
	
	//닉네임 중복 체크
	int nicknamechk(MemberVo memberVo) throws Exception;
}
