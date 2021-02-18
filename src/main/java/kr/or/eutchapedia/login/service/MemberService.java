package kr.or.eutchapedia.login.service;

import kr.or.eutchapedia.login.vo.MemberVo;

public interface MemberService {

	// 회원가입
	public void signup(MemberVo memberVo) throws Exception;
}
