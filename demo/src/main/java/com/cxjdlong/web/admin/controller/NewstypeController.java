package com.cxjdlong.web.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cxjdlong.basic.model.Createnewstype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.NewsTypeServiceI;

/**
 * NewstypeController
 * news type function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/newstype")
public class NewstypeController {

	/**
	 * list
	 * 
	 * @return new list show page
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<Createnewstype> mp = newstypeService.find();
		model.addAttribute("pager", mp);
		return "admin/newtype/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<Createnewstype> mp = newstypeService.find();
		mp.setPageoffSize(page);
		System.out.println("page="+page);
		model.addAttribute("pager", mp);
		return "admin/newtype/list";
	}

	private NewsTypeServiceI newstypeService;

	public NewsTypeServiceI getNewstypeService() {
		return newstypeService;
	}
	@Autowired
	public void setNewstypeService(NewsTypeServiceI newstypeService) {
		this.newstypeService = newstypeService;
	}
	
}
