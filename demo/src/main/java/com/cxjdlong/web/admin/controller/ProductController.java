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
import com.cxjdlong.basic.model.Createprotype;
import com.cxjdlong.basic.model.Pager;
import com.cxjdlong.basic.model.SystemContext;
import com.cxjdlong.basic.service.ProductServiceI;
import com.cxjdlong.basic.service.ProtypeServiceI;

/**
 * ProductController
 * product function Controller
 * @author root
 *
 */
@Controller
@RequestMapping("/masteLo/pros")
public class ProductController {
	
	private ProductServiceI productService;
	
	public ProductServiceI getProductService() {
		return productService;
	}
	@Autowired
	public void setProductService(ProductServiceI productService) {
		this.productService = productService;
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
		
		Pager<CreateProduct> mp = productService.find();
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
		return "admin/pro/list";
	}
	
	@RequestMapping("list/{Page}")
	public String list(@PathVariable("Page") int page,Model model,HttpServletRequest req){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(page);
		
		
		Pager<CreateProduct> mp = productService.find();
		mp.setPageoffSize(page);
		model.addAttribute("pager", mp);
		model.addAttribute("sortID",req.getParameter("sortID"));
		return "admin/pro/list";
	}
	
	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{id}")
	public String toUpdatePage(@PathVariable("id") int id, Model model) {
		CreateProduct pro = new CreateProduct();
		pro = productService.selectByID(id);

		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);		
		Pager<Createprotype> mp = protypeService.find();
		model.addAttribute("pager", mp);
		
		model.addAttribute("pro", pro);
		return "admin/pro/update";
	}
	

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid CreateProduct pros, BindingResult br, Model model) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
			model.addAttribute("pro", pros);
			return "admin/pro/update";
		}
				
		productService.updateByID(pros);
		model.addAttribute("showManage", "<script>alert('信息 修改OK!');</script>");
		model.addAttribute("pro", pros);
		
		return "admin/pro/update";
	}
	
	/**
	 * 转向到 添加页面
	 * @return
	 */
	@RequestMapping("/toAdd")
	public String toAdd(Model model){
		
		SystemContext.setPageSize(10);
		SystemContext.setPageOffset(0);
		
		Pager<Createprotype> mp = protypeService.find();
		model.addAttribute("pager", mp);
		
		return "admin/pro/add";
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
	public String addFun(@Valid CreateProduct pro,BindingResult br, Model model){
		
		productService.add(pro);
		model.addAttribute("showManage", "<script>alert('信息 添加成功!');</script>");
		return "admin/pro/add";
		
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
		productService.delectByID(id);
		model.addAttribute("showManage", "<script>alert('信息 删除成功!');</script>");
		return this.list(model,request);
	}
	
	
	private ProtypeServiceI protypeService;

	public ProtypeServiceI getProtypeService() {
		return protypeService;
	}
	@Autowired
	public void setProtypeService(ProtypeServiceI protypeService) {
		this.protypeService = protypeService;
	}
	
}
