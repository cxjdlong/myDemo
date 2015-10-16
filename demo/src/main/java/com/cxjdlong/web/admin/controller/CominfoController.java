package com.cxjdlong.web.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * CominfoController
 * 公司信息相关功能
 * @author root
 *
 */
@Controller
@RequestMapping("/admin/company")
public class CominfoController {

	/**
	 * update 修改公司信息
	 * @return update page
	 */
	@RequestMapping("update")
	public String update(){
		
		return "update";
	}

	/**
	 * toUpdate page 转向到公司修改页面
	 * @return update page
	 */
	@RequestMapping("show")
	public String toUpdatePage(){
		
		return "update";
	}
	
	
}
