<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<Script Language="JavaScript" type="text/JavaScript" src="/resources/js/fckupload.js"></Script>
	<title>资源上传</title>

 </head>
 <script>
 	function checkupload(){

 		if(document.form1.upload.value.length<5){
 			alert('请选择上传文件');
 			document.form1.upload.select();
 			return false;
 			
 		}
 		return true;
 	}
 </script>
<body>1
<% 
String editname = request.getParameter("name");
String uploadTtype = request.getParameter("uploadTtype"); 
%>

<sf:form id="myform" method="post" action="/masteLo/uplad/upPic.html" enctype="multipart/form-data" onsubmit="return checkupload();">
<font style="color:red;font-size:12px;">${requestScope.typeErrors}</font>
<input type="file" name="attach" />&nbsp;&nbsp;<input value="上传" type="submit" />
<input type="hidden" name="name" value="<%=editname %>">
	<c:if test="${isok==true }">
		&nbsp;<input type="button" value=" 添加到页面 " name="s" onClick="${fckString}" />
	</c:if>
	<c:if test="${request.isok==false }">
				<font style="color:#FF0000; font-size:12px;"><br/>&nbsp;&nbsp;&nbsp;上传后在加入</font>
	</c:if>

</sf:form>
</body>
</html>
