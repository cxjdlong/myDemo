<%@ page contentType="text/html; charset=GB2312" language="java" errorPage="" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<Script Language="JavaScript" type="text/JavaScript" src="/js/fckupload.js"></Script>
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
<body>
<% 
String editname = request.getParameter("name");
String uploadTtype = request.getParameter("uploadTtype"); 
%>

<form name="form1" action="<s:property value="formUrl" />" method="post" enctype="multipart/form-data" onsubmit="return checkupload();">
<font style="color:red;font-size:12px;">${requestScope.typeErrors}</font>
<input type="file" name="upload" />&nbsp;&nbsp;<input value="上传" type="submit" />
<input type="hidden" name="name" value="<%=editname %>">
<input type="hidden" name="uploadTtype" value="<%=uploadTtype %>">
	<s:if test="#request.isok==true">
		&nbsp;<input type="button" value=" 添加到页面 " name="s" onClick="<s:property value="fcks"/>" />
	</s:if>
	<s:else>
<font style="color:#FF0000; font-size:12px;"><br/>&nbsp;&nbsp;&nbsp;上传后在加入</font>
	</s:else>

</form>
</body>
</html>
