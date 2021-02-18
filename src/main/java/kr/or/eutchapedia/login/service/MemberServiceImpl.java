package kr.or.eutchapedia.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.eutchapedia.login.dao.MemberDao;
import kr.or.eutchapedia.login.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {

	private final MemberDao memberDao;
	
	@Inject
	public MemberServiceImpl(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	// 회원가입
	@Override
	public void signup(MemberVo memberVo) throws Exception {
		memberDao.signup(memberVo);
	}
}
