package kr.or.eutchapedia.mypage.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;

@Repository
@Mapper
public interface MypageDao {
	//탈퇴zone
	public int passchk(MemberVo vo);
	public void insertleavemember(LeaveMemberVo vo2);
	public void updatestatus(MemberVo vo);

}
