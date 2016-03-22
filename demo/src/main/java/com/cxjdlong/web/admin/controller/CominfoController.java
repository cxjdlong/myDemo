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
/**
 * CominfoController
 * 公司信息相关功能
 * @author root
 *
 */
import org.springframework.web.multipart.MultipartFile;

import com.cxjdlong.basic.model.Createcompanyinfo;
import com.cxjdlong.basic.service.CompanyServiceI;

@Controller
@RequestMapping("/masteLo/company")
public class CominfoController {

	/**
	 * update 修改公司信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid Createcompanyinfo company, BindingResult br, Model model, MultipartFile attach,
			HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
			model.addAttribute("showManage", "<script>alert('"+company.getTitle()+" 修改失败!');</script>");
			return "admin/com/update";
		}
		companyService.updateByID(company);
		model.addAttribute("showManage", "<script>alert('"+company.getTitle()+" 修改OK!');</script>");
		model.addAttribute("company", company);
		return "admin/com/update";
	}


	/**
	 * toUpdate page 转向到公司修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{companyKey}")
	public String toUpdatePage(@PathVariable("companyKey") String key, Model model) {
		Createcompanyinfo company = new Createcompanyinfo();
		company = companyService.getcompanyByKey(key);

		model.addAttribute("company", company);
		model.addAttribute("showManage", "");
		return "admin/com/update";
	}

	private CompanyServiceI companyService;

	public CompanyServiceI getCompanyService() {
		return companyService;
	}

	@Autowired
	public void setCompanyService(CompanyServiceI companyService) {
		this.companyService = companyService;
	}

}
