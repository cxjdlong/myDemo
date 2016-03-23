package com.cxjdlong.web.test.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.cxjdlong.basic.exception.UserException;
import com.cxjdlong.basic.model.User;

@Controller
public class TestController {
	
	private Map<String,User> users = new HashMap<String,User>();
	
	public TestController(){
		
		users.put("aa", new User("aa","username1","password1"));
		users.put("bb", new User("bb","username2","password2"));
		users.put("cc", new User("cc","username3","password3"));
	}

	@RequestMapping(value = "/hello/{u}")
	public String hello(@PathVariable("u") String name, Model m) {
		System.out.println("Spring-mvc HelloWorld\n");
		System.out.println("/hello/{u} ---> @pathVariable 地址穿参数 {u} = " + name);
		// String a = "<font color='red'>Hello World</font>";
		// m.addAttribute(a);
		return "hello";
	}

	@RequestMapping(value = "/hello")
	public String hello() {
		System.out.println("Spring-mvc HelloWorld\n");
		return "hello";
	}

	@RequestMapping(value = "/test1")
	public String test1(String username) {
		System.out.println("String username .do?username=" + username
				+ " 如果username不写为空 \n 使用 @RequestParam(\"username\") 参数不可以少");
//		String a = "<font color='red'>Hello World</font>";

		return "hello";
	}

	@RequestMapping(value = "/test2")
	public String test2(String username, Map<String, Object> context) {

		String miaosu = "test2<br/>描述：String username .do?username=" + username + " 'Map<String,Object> context'对页面的传值";
		System.out.println(miaosu);
		context.put("uname", miaosu);
		context.put("uname2", username);

		return "hello";
	}

	@RequestMapping(value = "/test3")
	public String test3(String username, Model model) {

		String miaosu = "test3<br/>描述：String username .do?username=" + username + " Model model -->spring提供的对页面的传值\n";
		miaosu = miaosu + "<br/> addAttribute 一个参数此时它默认类型key->model.addAttribute(\"string\"),username) jstl输出 string";
		System.out.println(miaosu);
		model.addAttribute("uname", miaosu);
		String addAttribute = "test addAttribute(Object) ";
		model.addAttribute(addAttribute);
		model.addAttribute("uname2", username);

		return "hello";
	}

	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public String reg(Model model) {
		String miaosu = "reg<br/>描述：reg Get 提交<br/>";
		System.out.println(miaosu);
		// model.addAttribute(miaosu);
		model.addAttribute(new User());
		return "user/user";
	}
	/**
	 * 单文件上传 
	 */
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String regUser(@Valid User user,BindingResult br ,
			Model model,MultipartFile attach,HttpServletRequest req) throws IOException{//一定要紧跟Validated之后写的验证结果类

		
		if(br.hasErrors()){
			//如果有错误直接跳转到reg试图;
			return "user/user";
		}
		if (attach.isEmpty()){			
			throw new UserException("file is null");
		}
		String rootPath = req.getSession().getServletContext().getRealPath("/resources");
		System.out.println("root Upload File Path="+rootPath);
		File f = new File(rootPath+File.separator+attach.getOriginalFilename());
		FileUtils.copyInputStreamToFile(attach.getInputStream(), f);
		String miaosu = "reg <br/>描述：reg Post提交";
		miaosu = miaosu + "<br/>upload :<br/>getName[属性名]="+ attach.getName()+
						" , <br/>getOriginalFilename[ 文件名]=" + attach.getOriginalFilename()+ 
						" , <br/>getContentType[类型] =" + attach.getContentType()+
						" , <br/>文件 file=" + rootPath+"/"+attach.getOriginalFilename();
		
		System.out.println(miaosu);
		model.addAttribute(miaosu);
		String userJSON = JSON.toJSONStringWithDateFormat(user, "yyyy-MM-DD HH:MM:SS");
		model.addAttribute("usertoString", userJSON);
		System.out.println(userJSON);
		
		return "/hello";
	}

	/**
	 * 多文件上传
	 * 数组的时候@RequestParam不能自动转换 
	 * 自己添加一个就可以了@RequestParam("attachs") 
	 */
	@RequestMapping(value="/reg2",method=RequestMethod.POST)
	public String regUser2(@Valid User user,BindingResult br ,
			Model model,@RequestParam("attachs") MultipartFile[] attachs,HttpServletRequest req) throws IOException{//一定要紧跟Validated之后写的验证结果类

		
		if(br.hasErrors()){
			//如果有错误直接跳转到reg试图;
			return "user/user";
		}
		String rootPath = req.getSession().getServletContext().getRealPath("/resources/upload");
		System.out.println("root Upload File Path="+rootPath);
		String miaosu = "reg <br/>描述：reg Post提交";
		for(MultipartFile attach:attachs){
			if (attach.isEmpty()) continue;
			File f = new File(rootPath+File.separator+attach.getOriginalFilename());
			FileUtils.copyInputStreamToFile(attach.getInputStream(), f);
			
			miaosu = miaosu + "<br/>upload :<br/>getName[属性名]="+ attach.getName()+
					" , <br/>getOriginalFilename[ 文件名]=" + attach.getOriginalFilename()+ 
					" , <br/>getContentType[类型] =" + attach.getContentType()+
					" , <br/>文件 file=" + rootPath+attach.getOriginalFilename();
		}		
		
		System.out.println(miaosu);
		model.addAttribute(miaosu);
		String userJSON = JSON.toJSONStringWithDateFormat(user, "yyyy-MM-DD HH:MM:SS");
		model.addAttribute("usertoString", userJSON);
		System.out.println(userJSON);
		
		return "/hello";
	}
	/**
	 *  全局异常处理 spring-mvc.xml处理
	 * @param username
	 * @param username2
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login")
	public String login(String username, String username2, HttpSession session) {
		if (!username.trim().equals(username2)) {
			throw new UserException("用户名不相等");
		}
		session.setAttribute("longUmSession", "session - longUsername=" + username);
		// redirect:/user/users;
		return "hello";
	}
	
	
	/**
	 * 局部异常处理 仅仅只能处理当前 controller 中的异常
	 * 设定全局关闭局部，去掉注释即可
	 */
	// @ExceptionHandler(value={UserException.class})
	// public String bandlerException(UserException e,HttpServletRequest req){
	// req.setAttribute("e", e);
	// return "error";
	// }

	/**
	 * SpringMvc 返回json数据
	 * @param username aa bb cc
	 * @return
	 */
	@RequestMapping(value="/{username}",method=RequestMethod.GET,params="jj")
	@ResponseBody
	public User show(@PathVariable("username") String username){
		
		return users.get(username);
	}
	/**
	 *  展示用户详情
	 * @param username
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/{username}")
	public String show(@PathVariable("username") String username,Model model){
		model.addAttribute(users.get(username));
		return "hello";
	}
	
	@RequestMapping(value="/users")
	public String list(Model model){		
		model.addAttribute("users", users);
		return "user/list";
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	

}
