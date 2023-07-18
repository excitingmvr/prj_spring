package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author i7C-31
 *
 */
@Controller
public class IndexController {

	/**
	 * @return
	 */
	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}
	
	
	/**
	 * @return
	 */
	@RequestMapping( value= {"/", "/indexUsrView"})
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
}
