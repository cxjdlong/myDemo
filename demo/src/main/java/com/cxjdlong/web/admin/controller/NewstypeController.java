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
	 * list 信息 列表页面
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
	/**
	 *  信息分页
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<Createnewstype> mp = newstypeService.find();
		mp.setPageoffSize(page);
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
		return "admin/newtype/list";
	}


	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		Createnewstype newtype = new Createnewstype();
		newtype = newstypeService.selectByID(id);

		model.addAttribute("newtype", newtype);
		return "admin/newtype/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid Createnewstype newtype, BindingResult br, Model model,HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
//			model.addAttribute("showManage", "<script>alert('"+link.getUrlName()+" 修改失败!');</script>");
			model.addAttribute("newtype", newtype);
			return "admin/com/update";
		}
		newstypeService.updateByID(newtype);
		model.addAttribute("showManage", "<script>alert('"+newtype.getClassName()+" 修改OK!');</script>");
		model.addAttribute("newtype", newtype);
		
		return "admin/newtype/update";
	}
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(){
		
		return "admin/newtype/add";
	}
	
	/**
	 *  信息 添加功能
	 * @param newtype
	 * @param br
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/add")
	public String addFun(@Valid Createnewstype newtype,BindingResult br, Model model){
		
		newstypeService.add(newtype);
		model.addAttribute("showManage", "<script>alert('"+newtype.getClassName()+" 添加成功!');</script>");
		return "admin/newtype/add";
		
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
		newstypeService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model);
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
