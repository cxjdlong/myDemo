<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
user.jsp <br>
spring - spring-mvc - mybatis <br>
HelloWorld!<br>
<hr/>
method=${uname}<br/>
uname2=${uname2}<br/>
model.addAttribute(username) string = ${string}

<hr/>
reg1 1 file
<sf:form method="post" action="reg.do" modelAttribute="user" enctype="multipart/form-data">
	id <sf:input path="id" /><br/><sf:errors path="id" cssStyle="color:red"/><br/>
	name <sf:input path="name" /><br/><sf:errors path="name" cssStyle="color:red"/><br/>
	pwd <sf:input path="pwd" /><br/><sf:errors path="pwd" cssStyle="color:red"/><br/>
	createdatetime <sf:input path="createdatetime" /><br/><sf:errors path="createdatetime" cssStyle="color:red"/><br/>
	upload-Attache1:<input type="file" name="attach" /><br/>
	<input type="submit" value=" 添加用户  " />
</sf:form>
<hr/><br/>
<p>reg2.do more file</p>

<sf:form method="post" action="reg2.do" modelAttribute="user" enctype="multipart/form-data">
	id <sf:input path="id" /><br/><sf:errors path="id" cssStyle="color:red"/><br/>
	name <sf:input path="name" /><br/><sf:errors path="name" cssStyle="color:red"/><br/>
	pwd <sf:input path="pwd" /><br/><sf:errors path="pwd" cssStyle="color:red"/><br/>
	createdatetime <sf:input path="createdatetime" /><br/><sf:errors path="createdatetime" cssStyle="color:red"/><br/>
	upload-Attache1:<input type="file" name="attachs" /><br/>
	upload-Attache2:<input type="file" name="attachs" /><br/>
	upload-Attache3:<input type="file" name="attachs" /><br/>
	<input type="submit" value=" 添加用户  " />
</sf:form>
</body>
</html>