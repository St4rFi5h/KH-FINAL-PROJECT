package kr.or.eutchapedia.mypage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVoTemp;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;

@Repository
@Mapper
public interface MypageDao {
	//탈퇴zone
	public MemberVoTemp passchk(MemberVo vo);
	public void insertleavemember(LeaveMemberVo vo2);
	public void updatestatus(MemberVo vo);
	
	//회원가입
	public void insertmember(MemberVo vo);
	
	//보고싶어요한 영화 select
	public List<WannaWatchVo> selectwannawatch(String memberemail);

}
