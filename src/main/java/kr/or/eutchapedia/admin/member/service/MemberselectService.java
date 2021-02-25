package kr.or.eutchapedia.admin.member.service;

import java.util.List;


import kr.or.eutchapedia.admin.member.entity.MemberCount;
import kr.or.eutchapedia.admin.member.entity.Memberinfo;

public interface MemberselectService {
	List<Memberinfo> getmemberList();
	List<Memberinfo> getmemberList(String field, String query, int page, int amount);
	List<MemberCount> getmemberCount(String field, String query);
	List<Memberinfo> getmemberList(int page,int amount);


}
