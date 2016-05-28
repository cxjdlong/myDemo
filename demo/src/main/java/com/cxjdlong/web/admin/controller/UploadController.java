package com.cxjdlong.web.admin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * WebsetController
 * 信息相关功能
 * @author root
 *
 */
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.cxjdlong.basic.exception.UserException;
import com.cxjdlong.basic.util.PubFunction;

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
	   
      String sytemFileStr = req.getSession().getServletContext().getRealPath("/resources");

		/***************  根据 日期 创建上传文件夹          start   ***************************************/
        Date date = new Date(); 
        String dateFile =  File.separator + new SimpleDateFormat("yyyy/MM/dd").format(date);
        File file = new File(sytemFileStr+dateFile);
      if(!file.exists()){//目录不存在则直接创建
    	  file.mkdirs();
        }        
		String picName  = "/resources"+dateFile+File.separator+PubFunction.getNow()+"."+PubFunction.getStrend(attach.getContentType(), "/", 1);
		String mkPicFile  = sytemFileStr+dateFile+File.separator+PubFunction.getNow()+"."+PubFunction.getStrend(attach.getContentType(), "/", 1);
		
		File f = new File(mkPicFile);
		FileUtils.copyInputStreamToFile(attach.getInputStream(), f);
	
		String fckString = "addUploadItem('"+attach.getContentType()+"','"+ picName +"','tscompanyContent');window.close();";
;
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
