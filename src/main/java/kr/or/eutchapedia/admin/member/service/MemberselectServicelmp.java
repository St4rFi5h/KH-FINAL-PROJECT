package kr.or.eutchapedia.admin.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.eutchapedia.admin.member.dao.MemberselectDao;
import kr.or.eutchapedia.admin.member.entity.MemberCount;
import kr.or.eutchapedia.admin.member.entity.Memberinfo;

@Service
public class MemberselectServicelmp implements MemberselectService {
//밑더미
	@Override
	public List<Memberinfo> getmemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Memberinfo> getmemberList(String field, String query, int page, int amount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberCount> getmemberCount(String field, String query) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Memberinfo> getmemberList(int page, int amount) {
		// TODO Auto-generated method stub
		return null;
	}
	/*
	@Autowired
	private MemberselectDao memberselectdao;
	
	
	@Override
 	public List<Memberinfo> getmemberList(){
		return getmemberList("memberEmail","",1,10);
	}

	

	@Override
 	public List<Memberinfo> getmemberList(int page,int amount){
	
		return getmemberList("memberEmail","",page,amount);
	}



	@Override
	public List<Memberinfo> getmemberList(String field, String query, int page, int amount) {
		List<Memberinfo>memberlist = memberselectdao.getmemberList(field,query,page,amount);
		return memberlist;
	}


	
	@Override
	public List<MemberCount> getmemberCount(String field, String query) {
		List<MemberCount>membercount = memberselectdao.getmemberCount(field,query);
		return membercount;
	}
	
		*/
	
}
