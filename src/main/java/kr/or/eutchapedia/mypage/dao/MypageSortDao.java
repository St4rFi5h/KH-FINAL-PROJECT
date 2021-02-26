package kr.or.eutchapedia.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVoTemp;
import kr.or.eutchapedia.mypage.entity.StarRatingForMainVo;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;

@Repository
@Mapper
public interface MypageSortDao {

	
	//sort테스트중
	public List<WannaWatchVo> selectwwsort1(String memberemail);
	public List<WannaWatchVo> selectwwsort2(String memberemail);
	public List<WannaWatchVo> selectwwsort3(String memberemail);
	public List<WannaWatchVo> selectwwsort4(String memberemail);
	
	

}
