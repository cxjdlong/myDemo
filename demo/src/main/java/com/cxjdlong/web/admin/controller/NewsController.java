package com.cxjdlong.web.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cxjdlong.basic.model.Createnews;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.NewsServiceI;

/**
 * NewsController
 * company news function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/news")
public class NewsController {

	/**
	 * list
	 * 
	 * @return new list show page
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		SystemContext.setPageOffset(2);
		SystemContext.setPageSize(5);
		Pager<Createnews> mp = newsService.find();
		model.addAttribute("pager", mp);
		System.out.println(mp.getDates().size());
		
		System.out.println(mp.getTotalPage()+","+mp.getTotalRecord()+","+mp.getPageoffSize());
		return "admin/new/list";
	}
	
	@RequestMapping("/{Page}")
	public String list(@PathVariable("Page") int page,Model model){
		
		SystemContext.setPageOffset(page);
		SystemContext.setPageSize(5);
		Pager<Createnews> mp = newsService.find();
		model.addAttribute("pager", mp);
		System.out.println(mp.getDates().size());
		
		System.out.println(mp.getTotalPage()+","+mp.getTotalRecord()+","+mp.getPageoffSize());
		return "admin/new/list";
	}

	private NewsServiceI newsService;
	public NewsServiceI getNewsService() {
		return newsService;
	}
	@Autowired
	public void setNewsService(NewsServiceI newsService) {
		this.newsService = newsService;
	}
	
}
