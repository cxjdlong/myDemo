package com.cxjdlong.web.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cxjdlong.basic.model.CreateAdpic;
import com.cxjdlong.basic.model.Createmaster;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.Resourcefields;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.model.User;
import com.cxjdlong.basic.service.MasterServiceI;
import com.cxjdlong.basic.service.ResourceServiceI;
import com.cxjdlong.basic.util.PubFunction;

/**
 * MasterController
 * admin function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/master")
public class MasterController {

	/**
	 * list 默认展示列表
	 * 
	 * @return new list show page
	 */
	@RequestMapping("/list")
	public String list(Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		Pager<Createmaster> mp = masterService.find();
		
		model.addAttribute("pager", mp);
		return "admin/master/list";
	}
	/**
	 *  信息分页
	 * @param page
	 * @param model
	 * @return
	 */
	@RequestMapping("/list/{Page}")
	public String list(@PathVariable("Page") int page,Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<Createmaster> mp = masterService.find();
		mp.setPageoffSize(page);
		System.out.println("page="+page);
		model.addAttribute("pager", mp);
		return "admin/master/list";
	}
	/**
	 *  查看个人信息
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping("/my")
	public String my(HttpSession session,Model model){
		
		if (session == null ){
			return "/admin/menu_login";
		}
		String userName = ((Createmaster)session.getAttribute("loginUser")).getUserid();		
		System.out.println("username"+userName);
		model.addAttribute("muser", (Createmaster)session.getAttribute("loginUser"));
		return "admin/master/update";
	}
	
	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		Createmaster cmaster = new Createmaster();
		cmaster = masterService.selectByID(id);

		model.addAttribute("muser", cmaster);
		return "admin/master/update";
	}
	
	
	/**
	 * update 管理员资料修改
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid Createmaster cmaster, BindingResult br, Model model,HttpSession session) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
			model.addAttribute("showManage", "<script>alert('"+ cmaster.getTename() +" 修改失败!');</script>");
			return "admin/master/update";
		}
		masterService.updateByID(cmaster);
		String sessionUserid = ((Createmaster)session.getAttribute("loginUser")).getUserid().trim();
		if(sessionUserid.equals(cmaster.getUserid().trim())){
			return "redirect:/admin/logout.html";
		}
		model.addAttribute("showManage", "<script>alert('"+ cmaster.getTename() +" 修改成功!');</script>");
		model.addAttribute("muser", cmaster);
		return "admin/master/update";
	}
	/**
	 * 管理员权限编辑页面
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping("/sort")
	public String sort(Model model,HttpSession session,HttpServletRequest request){
		String resourceString = ((Createmaster)session.getAttribute("loginUser")).getUserAuthority().trim();
		String id = PubFunction.getZhengzestr(resourceString);
		
		//获取管理员列表
		SystemContext.setPageSize(20);
		SystemContext.setPageOffset(0);
		Pager<Createmaster> mp = masterService.find();
		
		//目录树
		id = PubFunction.getsubStr(id, 0, id.length()-1);
		ArrayList menulist = new ArrayList();
		List<Resourcefields> rf = resourceService.getResourceFID(id);

		for(int i=0;i<rf.size();i++){
			List<Resourcefields> rf2 = resourceService.getResourceZID(id, rf.get(i).getId()+"");
			menulist.add(rf2);
		}

		model.addAttribute("rf", rf);
		model.addAttribute("menulist", menulist);
		model.addAttribute("pager", mp);
		model.addAttribute("showManage", request.getParameter("showManage"));
		return "admin/master/webSort";
	}
	
	/**
	 *  修改管理员权限
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateSort")

	public String updateSort(HttpServletRequest request,Createmaster master,Model model) {
		
		String masterlist	= "";
		List<Resourcefields> fieldslist = resourceService.getAllList();
		if(fieldslist.size()>0){
			for (int i=0 ; i<fieldslist.size();i++){
				String[] reve	= request.getParameterValues("fie_" + fieldslist.get(i).getId());		
				if(reve!=null){
					masterlist	= masterlist+"<"+ fieldslist.get(i).getId() +">";
					for(int ii=0;ii<reve.length;ii++)
					{
						masterlist=masterlist+reve[ii];					
					}					
				}			
			}			
		}
		
		master.setUserAuthority(masterlist);
		masterService.updateSortByID(master);
		model.addAttribute("showManage", "<script>alert('"+ master.getUserid() +" 修改成功!');</script>");
		return "redirect:/masteLo/master/sort.html";
	}
	
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(){
		
		return "admin/master/add";
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
	public String addFun(@Valid Createmaster master,BindingResult br, Model model){
		
		masterService.add(master);
		model.addAttribute("showManage", "<script>alert('"+master.getTename()+" 添加成功!');</script>");
		return "admin/master/add";
		
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
		masterService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model);
	}
	
	/**
	 * SpringMvc 返回json数据
	 * @param username aa bb cc
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/chekcUserid",method=RequestMethod.POST ,produces = "application/html")
	public boolean checkUserid(HttpServletRequest request){
		String userid= "23232322g3";//request.getParameter("userid");
//		System.out.println("userid="+request.getParameter("userid"));
		return masterService.checkMasterUserID(userid);
	}
	
	private MasterServiceI masterService;
	private ResourceServiceI resourceService;
	
	public ResourceServiceI getResourceService() {
		return resourceService;
	}
	@Autowired
	public void setResourceService(ResourceServiceI resourceService) {
		this.resourceService = resourceService;
	}
	
	public MasterServiceI getMasterService() {
		return masterService;
	}
	@Autowired
	public void setMasterService(MasterServiceI masterService) {
		this.masterService = masterService;
	}

	
}
