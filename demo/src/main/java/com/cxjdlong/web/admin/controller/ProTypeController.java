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

import com.cxjdlong.basic.model.Createprotype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
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
	public String list(Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<Createprotype> mp = protypeService.find();
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
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
	
	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		Createprotype type = new Createprotype();
		type = protypeService.selectByID(id);
		
		model.addAttribute("protype", type);
		return "admin/protype/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid Createprotype protype, BindingResult br, Model model) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
			model.addAttribute("protype", protype);
			return "admin/protype/update";
		}
				
		protypeService.updateByID(protype);
		model.addAttribute("showManage", "<script>alert('信息 修改OK!');</script>");
		model.addAttribute("protype", protype);
		
		return "admin/protype/update";
	}
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(Model model){
		
		return "admin/protype/add";
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
	public String addFun(@Valid Createprotype protype,BindingResult br, Model model){
		
		protypeService.add(protype);
		model.addAttribute("showManage", "<script>alert('信息 添加成功!');</script>");
		return "admin/protype/add";
		
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
		protypeService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model,request);
	}
	
}
