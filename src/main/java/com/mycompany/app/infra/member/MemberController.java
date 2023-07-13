package com.mycompany.app.infra.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/loginUsrForm")
	public String LoginUsrForm() {

		return "usr/infra/member/loginUsrForm";
	}
	
	@ResponseBody
	@RequestMapping("/loginProc")
	public Map<String, Object> loginProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOne(vo);
		
		if(rtMember != null) {
			
			httpSession.setMaxInactiveInterval(60*60);	// 60min
			httpSession.setAttribute("sessionId", vo.getIfmmId());
			
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping("/logoutUsrProc")
	public Map<String, Object> logoutUsrForm(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
//		System.out.println(httpSession.getAttribute("sessionId"));
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping("/checkIdProc")
	public Map<String, Object> checkIdProc(MemberVo vo) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int rtNum = service.selectOneCheckId(vo);
		
		if(rtNum == 0) {
			returnMap.put("rt", "available");
		} else {
			returnMap.put("rt", "unavailable");
		}
		
		return returnMap;
	}
	
}
