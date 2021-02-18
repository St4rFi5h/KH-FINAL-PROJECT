package kr.or.eutchapedia.mypage.service;


import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;


public interface MypageService {


	int passchk(MemberVo vo);

	void withdrawdo(MemberVo vo, LeaveMemberVo vo2);

}
