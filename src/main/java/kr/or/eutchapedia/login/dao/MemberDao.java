package kr.or.eutchapedia.login.dao;

import kr.or.eutchapedia.login.vo.MemberVo;

public interface MemberDao {
	
	//회원 가입
	public void signup(MemberVo memberVo) throws Exception;
	
//	//로그인
//	public MemberVo login(MemberVo vo) throws Exception;
}
