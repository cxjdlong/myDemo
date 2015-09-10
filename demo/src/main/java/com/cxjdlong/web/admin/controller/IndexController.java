package com.cxjdlong.web.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class IndexController {

	@RequestMapping(value="/login")
	public String login(){
		System.out.println("test");
		
		return "admin/index";
	}
}
