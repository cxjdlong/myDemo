package com.cxjdlong.web.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cxjdlong.basic.model.Createmaster;
import com.cxjdlong.basic.service.MasterServiceI;

@Controller
@SessionAttributes("loginUser")
@RequestMapping("/admin")
public class IndexController {

	@RequestMapping(value="/main")
	public String main(){
		System.out.println("test");
		
		return "admin/menu_main";
	}
	
	/**
	 * login goto 用户登录
	 * @return
	 */
	@RequestMapping(value="/login")
	public String login(){
		System.out.println("test");
		
		return "admin/menu_login";
	}
	
	/**
	 * checklogin 用户登录检测
	 * @param master
	 * @param br
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/checklogin")
	public String checkLogin(@Valid Createmaster master,BindingResult br,HttpServletRequest request,Model model){
		
		String userIP = request.getRemoteAddr();
		
		System.out.println("userIP="+userIP);
		System.out.println("master="+master.toString());
		
		Createmaster masterOne = masterService.selectLogin(master);
		System.out.println("master"+master.toString());
		if (masterOne==null){
			model.addAttribute("showManage", "<br/><br/>用户名或者密码输入不正确 请检测！！！");
			
		}else{
			model.addAttribute("loginUser", masterOne);
			masterService.updateMasterLogin(masterOne);
			return "redirect:/admin/main.html";
		}
		
		return "/admin/menu_login";
	}
	/**
	 * logout 用户退出登陆
	 * @param model
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(Model model,HttpSession session){
		model.asMap().remove("loginUser");
		session.invalidate();
		return "redirect:/admin/login.html";
	}
	
	private MasterServiceI masterService;

	public MasterServiceI getMasterService() {
		return masterService;
	}
	@Autowired
	public void setMasterService(MasterServiceI masterService) {
		this.masterService = masterService;
	}
	
	
}
