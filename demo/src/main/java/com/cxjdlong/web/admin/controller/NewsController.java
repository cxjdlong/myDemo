package com.cxjdlong.web.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/news")
public class NewsController {

	public String list(){
		
		return "list";
	}

}
