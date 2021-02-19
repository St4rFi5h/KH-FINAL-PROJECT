package kr.or.eutchapedia.mypage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.mypage.dao.MypageDao;
import kr.or.eutchapedia.mypage.entity.LeaveMemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.MemberVoTemp;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;
import kr.or.eutchapedia.mypage.salt.Utils;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDao Dao;

	@Override
	public int withdrawdo(MemberVo vo, LeaveMemberVo vo2) {
		
		int result;
		Utils utils = new Utils();
		
		MemberVoTemp v = new MemberVoTemp();
		
		String inputpwd = vo.getMemberPwd();
		
		v = Dao.passchk(vo);
		String salt = v.getMemberPwdSalt();
		String origin = v.getMemberPwd();
		String hash = utils.getEncrypt(inputpwd,salt);
		
		System.out.println("DB MEMBER_PWD = "+origin);
		System.out.println("인풋비번&DB솔트해시 =" +hash);
			
		if (origin.equals(hash)) {
			Dao.insertleavemember(vo2);
			Dao.updatestatus(vo);
			System.out.println("일치!");
			result = 1;
		}
		else {
			System.out.println("불일치!");
			result = 0;
		} 
		return result;
	}

	@Override
	public void signupdo(MemberVo vo) {
		Dao.insertmember(vo);
		
	}

	@Override
	public List<WannaWatchVo> wannawatch(String memberemail) {
		
		List<WannaWatchVo> list = new ArrayList<WannaWatchVo>();
	    list = Dao.selectwannawatch(memberemail);
		
		return list;
	}
}
