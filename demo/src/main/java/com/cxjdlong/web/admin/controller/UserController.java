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

import com.cxjdlong.basic.model.CreateUser;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.UserServiceI;

/**
 * UserController
 * user function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/users")
public class UserController {

	/**
	 * list
	 * 
	 * @return user list show page
	 */
	@RequestMapping("/list")
	public String list(Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<CreateUser> mp = userService.find();
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
		return "admin/user/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<CreateUser> mp = userService.find();
		mp.setPageoffSize(page);
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
		return "admin/user/list";
	}

	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		CreateUser user = new CreateUser();
		user = userService.selectByID(id);
		
		model.addAttribute("user", user);
		return "admin/user/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid CreateUser user, BindingResult br, Model model,HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
			model.addAttribute("user", user);
			return "admin/user/update";
		}
				
		userService.updateByID(user);
		model.addAttribute("showManage", "<script>alert('信息 修改OK!');</script>");
		model.addAttribute("user", user);
		
		return "admin/user/update";
	}
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(Model model){
				
		return "admin/user/add";
	}
	
	/**
	 *  信息 添加功能
	 * @param user
	 * @param br
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/add")
	public String addFun(@Valid CreateUser user,BindingResult br, Model model){
		
		userService.add(user);
		model.addAttribute("showManage", "<script>alert('信息 添加成功!');</script>");
		return "admin/user/add";
		
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
		userService.delectByID(id);
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

		Pager<CreateUser> mp =  userService.selectFun(request.getParameter("selectKey"));
		
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",request.getParameter("sortID"));
		return "admin/user/list";
	}
	private UserServiceI userService;

	public UserServiceI getUserService() {
		return userService;
	}
	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}
	
}
