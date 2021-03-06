package com.cxjdlong.web.admin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cxjdlong.basic.model.CreateProduct;
import com.cxjdlong.basic.model.Createnews;
import com.cxjdlong.basic.model.Createnewstype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.NewsServiceI;
import com.cxjdlong.basic.service.NewsTypeServiceI;

/**
 * NewsController
 * news function Controller
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
	public String list(Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<Createnews> mp = newsService.find();
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
		return "admin/new/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<Createnews> mp = newsService.find();
		mp.setPageoffSize(page);
		model.addAttribute("sortID",req.getParameter("sortID"));
		model.addAttribute("pager", mp);
		return "admin/new/list";
	}

	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		Createnews news = new Createnews();
		news = newsService.selectByID(id);

		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);		
		Pager<Createnewstype> mp = newstypeService.find();
		model.addAttribute("pager", mp);
		
		model.addAttribute("news", news);
		return "admin/new/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid Createnews news, BindingResult br, Model model,HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
//			model.addAttribute("showManage", "<script>alert('"+link.getUrlName()+" 修改失败!');</script>");
			model.addAttribute("news", news);
			return "admin/new/update";
		}
				
		newsService.updateByID(news);
		model.addAttribute("showManage", "<script>alert('信息 修改OK!');</script>");
		model.addAttribute("news", news);
		
		return "admin/new/update";
	}
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<Createnewstype> mp = newstypeService.find();
		model.addAttribute("pager", mp);
		
		return "admin/new/add";
	}
	
	/**
	 *  信息 添加功能
	 * @param news
	 * @param br
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/add")
	public String addFun(@Valid Createnews news,BindingResult br, Model model){
		
		newsService.add(news);
		model.addAttribute("showManage", "<script>alert('信息 添加成功!');</script>");
		return "admin/new/add";
		
	}
	
	/**
	 * 信息 删除功能
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/del")
	public String del(Model model , HttpServletRequest request){
		String id = request.getParameter("id");
		newsService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model,request);
	}
	
	/**
	 *  信息 查询功能
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/select")
	public String select(Model model,HttpServletRequest request){

		Pager<Createnews> mp =  newsService.selectFun(request.getParameter("selectKey"));
		
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",request.getParameter("sortID"));
		return "admin/new/list";
	}

	private NewsServiceI newsService;
	private NewsTypeServiceI newstypeService;

	public NewsTypeServiceI getNewstypeService() {
		return newstypeService;
	}
	@Autowired
	public void setNewstypeService(NewsTypeServiceI newstypeService) {
		this.newstypeService = newstypeService;
	}
	
	public NewsServiceI getNewsService() {
		return newsService;
	}
	@Autowired
	public void setNewsService(NewsServiceI newsService) {
		this.newsService = newsService;
	}
	
}
