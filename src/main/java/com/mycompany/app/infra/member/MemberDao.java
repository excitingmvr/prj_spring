package com.mycompany.app.infra.member;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.member.MemberMapper";
	
	public Member selectOne(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int selectOneCheckId(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOneCheckId", vo); }
}
