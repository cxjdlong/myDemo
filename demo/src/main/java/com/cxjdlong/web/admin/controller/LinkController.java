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

import com.cxjdlong.basic.model.CreateLink;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.LinkServiceI;

/**
 * LinkController 友情链接
 * link function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/link")
public class LinkController {

	/**
	 * list
	 * 
	 * @return new list show page
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		SystemContext.setPageSize(20);
		SystemContext.setPageOffset(0);
		
		Pager<CreateLink> mp = linkService.find();
		model.addAttribute("pager", mp);
		return "admin/link/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model){
		
		SystemContext.setPageSize(20);
		SystemContext.setPageOffset(page);
				
		Pager<CreateLink> mp = linkService.find();
		mp.setPageoffSize(page);
		System.out.println("page="+page);
		model.addAttribute("pager", mp);
		return "admin/link/list";
	}
	
	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		CreateLink link = new CreateLink();
		link = linkService.selectByID(id);

		model.addAttribute("link", link);
		return "admin/link/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid CreateLink link, BindingResult br, Model model,HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
//			model.addAttribute("showManage", "<script>alert('"+link.getUrlName()+" 修改失败!');</script>");
			model.addAttribute("link", link);
			return "admin/com/update";
		}
		linkService.updateByID(link);
		model.addAttribute("showManage", "<script>alert('"+link.getUrlName()+" 修改OK!');</script>");
		model.addAttribute("link", link);
		
		return "admin/link/update";
	}
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(){
		
		return "admin/link/add";
	}
	/**
	 *  信息 添加功能
	 * @param link
	 * @param br
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/add")
	public String addFun(@Valid CreateLink link,BindingResult br, Model model){
		
		linkService.add(link);
		model.addAttribute("showManage", "<script>alert('"+link.getUrlName()+" 添加成功!');</script>");
		return "admin/link/add";
		
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
		System.out.println("idString = "+id);
		linkService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model);
	}
	private LinkServiceI linkService;

	public LinkServiceI getLinkService() {
		return linkService;
	}
	@Autowired
	public void setLinkService(LinkServiceI linkService) {
		this.linkService = linkService;
	}
		
}
