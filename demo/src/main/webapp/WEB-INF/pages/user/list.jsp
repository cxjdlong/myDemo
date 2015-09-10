<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
user/list.jsp<br/>用户列表<br/>
<c:forEach items="${users}" var="um">
	${um.value.id} ----<a href="${um.value.id}.do" >${um.value.name}</a>---${um.value.pwd} <br/>
</c:forEach>
<hr/>
</body>
</html>