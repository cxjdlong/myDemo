package com.cxjdlong.web.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cxjdlong.basic.model.Createprotype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.ProductServiceI;
import com.cxjdlong.basic.service.ProtypeServiceI;

/**
 * ProTypeController
 * product type function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/protype")
public class ProTypeController {
	
	private ProtypeServiceI protypeService;

	public ProtypeServiceI getProtypeService() {
		return protypeService;
	}
	@Autowired
	public void setProtypeService(ProtypeServiceI protypeService) {
		this.protypeService = protypeService;
	}

	/**
	 * list
	 * 
	 * @return new list show page
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<Createprotype> mp = protypeService.find();
		model.addAttribute("pager", mp);
		return "admin/protype/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<Createprotype> mp = protypeService.find();
		mp.setPageoffSize(page);
		System.out.println("page="+page);
		model.addAttribute("pager", mp);
		return "admin/protype/list";
	}
	
}
