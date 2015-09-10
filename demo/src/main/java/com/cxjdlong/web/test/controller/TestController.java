package com.cxjdlong.web.test.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.cxjdlong.basic.model.User;

@Controller
public class TestController {

	@RequestMapping(value="/hello/{u}")
	public String hello(@PathVariable("u") String name,Model m){
		System.out.println("Spring-mvc HelloWorld\n");
		System.out.println("/hello/{u} ---> @pathVariable 地址穿参数 {u} = "+name);
//		String a = "<font color='red'>Hello World</font>";
//		m.addAttribute(a);
		return "hello";
	}
	
	@RequestMapping(value="/hello")
	public String hello(){
		System.out.println("Spring-mvc HelloWorld\n");
		return "hello";
	}
	
	@RequestMapping(value="/test1")
	public String test1(String username){
		System.out.println("String username .do?username="+username +" 如果username不写为空 \n 使用 @RequestParam(\"username\") 参数不可以少");
		String a = "<font color='red'>Hello World</font>";
		
		return "hello";
	}
	
	@RequestMapping(value="/test2")
	public String test2(String username,Map<String,Object> context){
		
		String miaosu = "test2<br/>描述：String username .do?username="+username +" 'Map<String,Object> context'对页面的传值";
		System.out.println(miaosu);
		context.put("uname", miaosu);
		context.put("uname2", username);
				
		return "hello";
	}
	
	@RequestMapping(value="/test3")
	public String test3(String username,Model model){
		
		String miaosu = "test3<br/>描述：String username .do?username="+username +" Model model -->spring提供的对页面的传值\n";
		miaosu = miaosu +"<br/> addAttribute 一个参数此时它默认类型key->model.addAttribute(\"string\"),username) jstl输出 string";
		System.out.println(miaosu);
		model.addAttribute("uname", miaosu);
		String addAttribute = "test addAttribute(Object) ";
		model.addAttribute(addAttribute);
		model.addAttribute("uname2", username);
		
		return "hello";
	}
	
	@RequestMapping(value="/reg",method=RequestMethod.GET)
	public String reg(Model model){
		String miaosu = "reg<br/>描述：reg Get 提交<br/>";
		System.out.println(miaosu);
//		model.addAttribute(miaosu);
		model.addAttribute(new User());
		return "user/user";
	}
	
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String regUser(@Valid User user,BindingResult br ,Model model){//一定要紧跟Validated之后写的验证结果类

		
		if(br.hasErrors()){
			//如果有错误直接跳转到reg试图;
			return "user/user";
		}
		String miaosu = "reg <br/>描述：reg Post提交";
		System.out.println(miaosu);
		model.addAttribute(miaosu);
		String userJSON = JSON.toJSONStringWithDateFormat(user, "yyyy-MM-DD HH:MM:SS");
		model.addAttribute("usertoString", userJSON);
		System.out.println(userJSON);
		
		return "/hello";
	}
}
