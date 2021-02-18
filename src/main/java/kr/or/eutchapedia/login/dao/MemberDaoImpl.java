package kr.or.eutchapedia.login.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.login.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	private static final String NAMESPACE = "kr.or.eutchapedia.login.mapper.MemberMapper";
	
	private final SqlSession sqlSession;

	@Inject
	public MemberDaoImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	//회원가입
	@Override
	public void signup(MemberVo memberVo) throws Exception {
		sqlSession.insert(NAMESPACE + ".signup", memberVo);
	}
	

}
