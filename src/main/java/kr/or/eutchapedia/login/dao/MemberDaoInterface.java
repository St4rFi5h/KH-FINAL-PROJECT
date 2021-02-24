package kr.or.eutchapedia.login.dao;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.login.vo.MemberVo;
import kr.or.eutchapedia.login.vo.MemberVoTemp;

@Repository
@Mapper
public interface MemberDaoInterface {

	//회원가입
	int signup(MemberVo memberVo) throws SQLException;

	//이메일 중복 체크
	int emailchk(String memberEmail) throws Exception;

	//닉네임 중복 체크
	int nicknamechk(String memberNickname) throws Exception;

	//로그인
	MemberVo login(String memberEmail, String memberPwd, String memberPwdSalt);
	MemberVoTemp loginchk(String memberEmail, String memberPwd, String memberPwdSalt);
	
	//비밀번호 찾기
	void findpwd(MemberVo memberVo);
}
