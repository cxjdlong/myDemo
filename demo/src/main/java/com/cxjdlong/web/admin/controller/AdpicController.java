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
	 * list 列表页面
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
	/**
	 *  列表 分页
	 * @param page
	 * @param model
	 * @return
	 */
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

	
	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		CreateAdpic adpic = new CreateAdpic();
		adpic = adpicService.selectByID(id);

		model.addAttribute("adpic", adpic);
		return "admin/adpic/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid CreateAdpic adpic, BindingResult br, Model model,HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
//			model.addAttribute("showManage", "<script>alert('"+link.getUrlName()+" 修改失败!');</script>");
			model.addAttribute("adpic", adpic);
			return "admin/com/update";
		}
		adpicService.updateByID(adpic);
		model.addAttribute("showManage", "<script>alert('"+adpic.getPicname()+" 修改OK!');</script>");
		model.addAttribute("link", adpic);
		
		return "admin/adpic/update";
	}
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(){
		
		return "admin/adpic/add";
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
	public String addFun(@Valid CreateAdpic adpic,BindingResult br, Model model){
		
		adpicService.add(adpic);
		model.addAttribute("showManage", "<script>alert('"+adpic.getPicname()+" 添加成功!');</script>");
		return "admin/adpic/add";
		
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
		adpicService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model);
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
