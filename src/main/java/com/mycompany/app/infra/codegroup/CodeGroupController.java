package com.mycompany.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "xdm/infra/codegroup/codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		return "xdm/infra/codegroup/codeGroupForm";
	}
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupDele")
	public String codeGroupDele(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupUele")
	public String codeGroupUele(CodeGroup dto) {
		service.uelete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupInst")
	public String codeGroupInst(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupList";
	}

}
