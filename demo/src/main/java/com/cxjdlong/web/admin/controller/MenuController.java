package com.cxjdlong.web.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cxjdlong.basic.model.Menutree;
import com.cxjdlong.basic.model.Resourcefields;
import com.cxjdlong.basic.service.MenutreeServiceI;
import com.cxjdlong.basic.service.ResourceServiceI;
import com.cxjdlong.basic.util.PubFunction;

@Controller
@RequestMapping("/cxjdlong/menu")
public class MenuController {
	
	private ResourceServiceI resourceService;
	
	private MenutreeServiceI menutreeService;
	
	@RequestMapping(value = "/left")
	public String left(Model model){
		
		String resourceString = "<1>1234<2>1234<3>1234<4>1234<5>1234<6>1234<7>1234<8>1234<9>1234<10>1234<11>1234<12>1234<13>1234<14>1234<15>1234<16>1234<17>1234<18>1234<19>1234<20>1234<21>1234<22>1234<23>1234<24>1234<25>1234<26>1234<27>1234<28>1234<29>1234<30>1234";
		String id = PubFunction.getZhengzestr(resourceString);
		id = PubFunction.getsubStr(id, 0, id.length()-1);
		System.out.println("selectID="+id);

		ArrayList menulist = new ArrayList();
		List<Resourcefields> rf = resourceService.getResourceFID(id);
		System.out.println(">>>"+rf.size());
		for(int i=0;i<rf.size();i++){
			System.out.println(">>>"+ rf.get(i).getFieldName());
			System.out.println("-----------"+rf.get(i).getId());
			List<Resourcefields> rf2 = resourceService.getResourceZID(id, rf.get(i).getId()+"");
			menulist.add(rf2);
//			for(int b=0 ; b<rf2.size();b++){
//				System.out.println("---"+rf2.get(b).getFieldName());
//			}
		}
		System.out.println("menulist size="+menulist.size());
		model.addAttribute("rf", rf);
		model.addAttribute("menulist", menulist);
		
		
		return "admin/menu/left";
	}
	
	@RequestMapping(value="/right")
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="/top")
	public String top(){		
		return "admin/menu/top";
	}
	@RequestMapping(value="/main")
	public String main(){
		return "admin/menu_main";
	}
	@RequestMapping("/tree")
	public void tree(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		String resourceString = "<31>1234<32>1234<33>1234<34>1234<35>1234<36>1234";
		String id = PubFunction.getZhengzestr(resourceString);
		id = PubFunction.getsubStr(id, 0, id.length()-1);
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/xml;charset=utf-8");
		PrintWriter out = response.getWriter();
		List<Menutree> list = menutreeService.getMenutreeByIdIn(id);
		if(list!=null && list.size()>0){
			out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");			
			out.println("<nodes>");
			for(int i=0;i<list.size();i++){
				out.println("<node nodeId='"+list.get(i).getNodeId()+"' parentId='"+list.get(i).getParentId()+"' hrefaddress='"+list.get(i).getResType()+"'>"
						+list.get(i).getFieldName()+"["+list.get(i).getFieldName()+"-"+list.get(i).getNodeId()+"]"+"</node>");
			}
			out.print("</nodes>");

		}
		
	}
	@RequestMapping("/gotree")
	public String gotree(){
		return "tree";
	}
	public ResourceServiceI getResourceService() {
		return resourceService;
	}
	
	@Autowired
	public void setResourceService(ResourceServiceI resourceService) {
		this.resourceService = resourceService;
	}

	public MenutreeServiceI getMenutreeService() {
		return menutreeService;
	}
	@Autowired
	public void setMenutreeService(MenutreeServiceI menutreeService) {
		this.menutreeService = menutreeService;
	}


	
	
	
}
