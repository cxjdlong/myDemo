package com.cxjdlong.web.admin.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.cxjdlong.basic.exception.UserException;
import com.cxjdlong.basic.model.User;
import com.cxjdlong.basic.model.WebsiteConf;
import com.cxjdlong.basic.service.WebsetServiceI;

@Controller
@RequestMapping("/masteLo/uplad")
public class UploadController {

	/**
	 * 单文件上传 
	 */
	@RequestMapping(value="/upPic",method=RequestMethod.POST)
	public String upPic(Model model,MultipartFile attach,HttpServletRequest req) throws IOException{

		if (attach.isEmpty()){
			model.addAttribute("isok",false);
			throw new UserException("file is null");
			
		}
		String rootPath = req.getSession().getServletContext().getRealPath("/resources");
		System.out.println("root Upload File Path="+rootPath);
		String picName  = rootPath+File.separator+attach.getOriginalFilename();
		File f = new File(picName);
		FileUtils.copyInputStreamToFile(attach.getInputStream(), f);
		String miaosu = "reg <br/>描述：reg Post提交";
		miaosu = miaosu + "<br/>upload :<br/>getName[属性名]="+ attach.getName()+
						" , <br/>getOriginalFilename[ 文件名]=" + attach.getOriginalFilename()+ 
						" , <br/>getContentType[类型] =" + attach.getContentType()+
						" , <br/>文件 file=" + rootPath+"/"+attach.getOriginalFilename();
		String fckString = "addUploadItem('"+attach.getContentType()+"','"+ picName +"','tscompanyContent');window.close();";
//		System.out.println(miaosu);
//		model.addAttribute(miaosu);
		System.out.println(attach.getContentType());
		model.addAttribute("fckString",fckString);
		model.addAttribute("isok",true);
		
		return "/admin/uplad";
	}
	@RequestMapping("/upladPage")
	public String toUplad(Model model,HttpServletRequest req){
		model.addAttribute("editname", req.getParameter("name"));
		model.addAttribute("uploadTtype",req.getParameter("fun"));
		return "/admin/uplad";
	}
}
