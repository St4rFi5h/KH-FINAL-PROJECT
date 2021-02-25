package kr.or.eutchapedia.login.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.login.controller.Utils;
import kr.or.eutchapedia.login.dao.MemberDaoInterface;
import kr.or.eutchapedia.login.vo.MemberVo;
import kr.or.eutchapedia.login.vo.MemberVoTemp;


@Service
public class MemberService {

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
	public int login(MemberVo memberVo, HttpSession httpSession) {
		
		//로그인 객체 확인
		System.out.println("//로그인 객체 확인 memberVo : " + memberVo);
		
		utils = new Utils();
		
		MemberVoTemp vtemp = new MemberVoTemp(); //로그인 확인용
		
		String memberEmail = memberVo.getMemberEmail(); //사용자 입력 이메일
		String inputPwd = memberVo.getMemberPwd(); // 사용자 입력 비번
		
		vtemp = memberDao.loginchk(memberEmail);
		
		//비밀번호 암호화
		String salt = vtemp.getMemberPwdSalt(); //솔트
		System.out.println(salt);
		String pwd = vtemp.getMemberPwd();
		String pwdSalt = utils.getEncrypt(inputPwd, salt);
		
		System.out.println("//로그인 객체 확인 vtemp : " + vtemp);
		
		//로그인 결과 값
		int result;
				
		// 세션에 아이디값 저장
		httpSession.setAttribute("memberEmail", memberEmail);
		System.out.println("회원 이메일 세션 : " + httpSession.getAttribute("memberEmail"));
		
		if(pwd.equals(pwdSalt)) {
			memberDao.login(memberEmail, inputPwd);
			System.out.println("일치");
			result = 1;
		} else {
			System.out.println("불일치");
			result = 0;
		}
		return result;
		
	}
	
	//로그아웃
	public void logout(HttpSession session) {
		session.invalidate();
	}

	//이메일 중복 체크
	public int emailchk(String memberEmail) throws Exception {

		return memberDao.emailchk(memberEmail); 
	}

	//닉네임 중복 체크
	public int nicknamechk(String memberNickname) throws Exception {

		return memberDao.nicknamechk(memberNickname);
	}
	
	
//	  public String findpwd(MemberVo memberVo) {
//	  
//		  return memberDao.findpwd(memberVo);
//	  
//	  }
	 
}	



