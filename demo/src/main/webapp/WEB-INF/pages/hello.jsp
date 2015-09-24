<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
hello.jsp <br>
spring - spring-mvc - mybatis <br>
HelloWorld!<br>

<hr/>
method=${uname}<br/>
uname2=${uname2}<br/>
model.addAttribute(username) string = ${string}
<hr/>

<a href="users.do">用户列表 方法</a><br/>

<hr/>
show 方法<br/>
username=${user.name }---id = ${user.id}---pwd=${user.pwd }<br>

<hr/>
reg Post<br/>
user.toString 表单提交接收<br/>
user.toString = ${usertoString}<br/>
<a href="reg.do">添加用户</a><br/>
<hr/>

/login.do?username=**&usernam2=***
局部异常处理
username = usernam2 <br/>-> set username to session
<font color="red">${longUmSession}</font>

<hr/>

spring 3.0.5之后用参数 spring-mvc.xml --> mvc:resources
/resources/**  <br/>
**resources文件夹下所有的文件夹及文件
将静态文件指定到特殊文件夹中统一处理
</body>
</html>