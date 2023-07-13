package com.mycompany.app.infra.member;

public interface MemberService {
	
	public Member selectOne(MemberVo vo);
	public int selectOneCheckId(MemberVo vo);
}
