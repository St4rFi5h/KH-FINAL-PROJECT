package kr.or.eutchapedia.mypage.service;


import java.util.List;

import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.StarRatingForMainVo;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;


public interface MypageService {

	int withdrawdo(MemberVo vo, LeaveMemberVo vo2);

	void signupdo(MemberVo vo);
	
	List<WannaWatchVo> wannawatch(String memberemail);

	List<StarRatingForMainVo> getratinginfo(String memberemail);

	MemberVo getMemberinfo(String memberemail);

}
