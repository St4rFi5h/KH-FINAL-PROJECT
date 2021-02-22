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
	@Autowired
	private MemberDaoInterface memberDao;
	private Utils utils;

	//회원가입
	public int signup(MemberVo memberVo) {

		int resultCnt = 0;

		try {
			utils = new Utils();
			memberVo.setMemberPwdSalt(utils.getSalt());
			memberVo.setMemberPwd(utils.getEncrypt(memberVo.getMemberPwd(), memberVo.getMemberPwdSalt()));

			resultCnt = memberDao.signup(memberVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultCnt;
	}
	
	//로그인
	public MemberVo login(MemberVo memberVo) throws Exception {
		return memberDao.login(memberVo);
	}

	/*
	 * //이메일 중복 체크 public int emailchk(String memberEmail) { int resultCnt = 0;
	 * 
	 * try { resultCnt = memberDao.emailchk(memberEmail);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } return resultCnt; }
	 * 
	 * //닉네임 중복 체크 public int nicknamechk(String memberNickname) { int resultCnt =
	 * 0;
	 * 
	 * try { resultCnt = memberDao.emailchk(memberNickname);
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } return resultCnt; }
	 */



	public int emailchk(String memberEmail) throws Exception {

		return memberDao.emailchk(memberEmail); 
	}


	public int nicknamechk(String memberNickname) throws Exception {

		return memberDao.nicknamechk(memberNickname);
	}
}	



