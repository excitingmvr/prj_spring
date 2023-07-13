package com.mycompany.app.infra.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public Member selectOne(MemberVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCheckId(MemberVo vo) {
		return dao.selectOneCheckId(vo);
	}

}
