package com.daotest.Ic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class InterceptorC {

	@GetMapping("/test")
	public String testIc() {
		System.out.println("/admin/test");
		return "/admin/test";
	}

}
