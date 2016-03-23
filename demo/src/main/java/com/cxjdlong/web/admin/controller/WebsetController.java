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
 * WebsetController
 * 信息相关功能
 * @author root
 *
 */

import com.cxjdlong.basic.model.WebsiteConf;
import com.cxjdlong.basic.service.WebsetServiceI;

@Controller
@RequestMapping("/masteLo/webset")
public class WebsetController {

	/**
	 * update 修改信息
	 * 
	 * @return update page
	 */
	@RequestMapping("/update")
	public String update(@Valid WebsiteConf webconf, BindingResult br, Model model,HttpServletRequest req) throws IOException {// 一定要紧跟Validated之后写的验证结果类
		
		
		if (br.hasErrors()) {
			// 如果有错误直接跳转到reg试图;
			model.addAttribute("showManage", "<script>alert('网站基本资料修改失败!');</script>");
			return "admin/website/update";
		}
		websetService.updateByID(webconf);
		model.addAttribute("showManage", "<script>alert('网站基本资料修改成功!');</script>");
		model.addAttribute("webconf", webconf);
		return "admin/website/update";
	}


	/**
	 * toUpdate page 转向到修改页面
	 * 
	 * @return update page
	 */
	@RequestMapping("/{websetkey}")
	public String toUpdatePage(@PathVariable("websetkey") String key, Model model) {
		WebsiteConf ws = new WebsiteConf();
		ws = websetService.getByKey(key);

		model.addAttribute("webconf", ws);
		model.addAttribute("showManage", "");
		return "admin/website/update";
	}

	private WebsetServiceI websetService;

	public WebsetServiceI getWebsetService() {
		return websetService;
	}
	@Autowired
	public void setWebsetService(WebsetServiceI websetService) {
		this.websetService = websetService;
	}

}
