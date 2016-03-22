package com.cxjdlong.web.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cxjdlong.basic.model.CreateAdpic;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.AdpicServiceI;

/**
 * AdpicController
 * ad pic function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/adpic")
public class AdpicController {

	/**
	 * list
	 * 
	 * @return new list show page
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<CreateAdpic> mp = adpicService.find();
		model.addAttribute("pager", mp);
		return "admin/adpic/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<CreateAdpic> mp = adpicService.find();
		mp.setPageoffSize(page);
		System.out.println("page="+page);
		model.addAttribute("pager", mp);
		return "admin/adpic/list";
	}

	private AdpicServiceI adpicService;

	public AdpicServiceI getAdpicService() {
		return adpicService;
	}
	@Autowired
	public void setAdpicService(AdpicServiceI adpicService) {
		this.adpicService = adpicService;
	}
	
	
}
