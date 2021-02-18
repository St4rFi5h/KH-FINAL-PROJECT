package kr.or.eutchapedia.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.mypage.dao.MypageDao;
import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDao Dao;

	@Override
	public int passchk(MemberVo vo) {
		
		System.out.println("서비스"+ vo.getMemberEmail());
		System.out.println("서비스" +vo.getMemberPwd());
		
		int result= Dao.passchk(vo);
		
		return result;
	}

	@Override
	public void withdrawdo(MemberVo vo, LeaveMemberVo vo2) {
		
		Dao.insertleavemember(vo2);
		Dao.updatestatus(vo);
		
	}

}
