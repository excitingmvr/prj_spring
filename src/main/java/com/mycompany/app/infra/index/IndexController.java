package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}
	
	
	@RequestMapping( value= {"/", "/indexUsrView"})
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
}
