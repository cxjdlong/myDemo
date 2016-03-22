<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/mfolder/js/jquery.js"></script>

<script type="text/javascript">

function SelectAll(checkboxName) { 
	var checkboxs=document.getElementsByName(checkboxName); 
	for (var i=0;i<checkboxs.length;i++) {  
		var e=checkboxs[i];  e.checked=!e.checked;
	}
}

</script>

${showManage }
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/cxjdlong/menu/right.html">首页</a></li>
    <li><a href="#">权限管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
		
		<sf:form id="myform" method="post" action="/masteLo/master/updateSort.html" modelAttribute="master" onsubmit="return eduMaster();">
			<table border="1" bgcolor="EDF6FA" align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:collapse">
				<tr>
					<td align="center" height="25" bgcolor="EDF6FA">修改管理员权限</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;执行操作的用户： <font color="red">${loginUser.tename } - ${loginUser.userid }</font>&nbsp;&nbsp;被编辑的用户 ：
					
						<select name="userid" class="select3">	
							<c:forEach items="${pager.dates}" var="master" varStatus="stuts">
							    <option value="${master.userid }">${master.tename }[${master.userid }]</option>
							</c:forEach>
			    		</select>
		    				
	  				
    				<font color="red"></font>
						<table border="0" cellpadding="0" cellspacing="1" width="100%">
							<tr bgcolor="EDF6FA">
								<td align="center" height="30" colspan="2" style="font-weight:bold">管 理 权 限 详 细 设 置</td>
							</tr>
							<tr bgcolor="#EEEEEE" style="font-weight:bold">
								<td align="center" width="20%" rowspan="2">栏 目 名 称</td>
								<td align="center" width="80%">栏 目 权 限</td>
							</tr>
							<tr bgcolor="#EEEEEE" style="font-weight:bold">
								<td align="center">
									<table border="0" cellpadding="0" cellspacing="1" width="100%">
										<tr>
											<td align="center">添加</td>
											<td align="center">编辑</td>
											<td align="center">删除</td>
											
										</tr>
									</table>
								</td>
							</tr>
		
		<!-- start -->
						<c:forEach items="${rf}" var="rf" varStatus="stuts">					
							<tr bgcolor="#FAE8C9">
								<td align="center" height="25">${rf.fieldName }</td>
								<td align="left">&nbsp;&nbsp;能否管理 ：<input type="checkbox" checked name="fie_${rf.id}" value="1" /></td>
							</tr>							
							
							<c:forEach items="${menulist[stuts.index]}" var="menulist" varStatus="stutsb">
								<tr bgcolor="#FFFFFF">
									<td align="center" style="text-indent:20px">${menulist.fieldName }&nbsp;&nbsp;&nbsp;<img src="/resources/mfolder/images/t01.png" style="CURSOR:HAND;" border=0 width="15" height="15" onclick="SelectAll('fie_${menulist.id}');"/></td>
									<td align="center">
										<table border="0" cellpadding="0" cellspacing="1" width="100%">
											<tr>																						
												<td align="center" style="background-color:#CCFFFF;"><input type="checkbox" checked id="fid_${rf.id}" name="fie_${menulist.id}" value="1" /></td>													
												<td align="center" style="background-color:#CCFFFF;"><input type="checkbox" checked id="fid_${rf.id}" name="fie_${menulist.id}" value="2" /></td>													
												<td align="center" style="background-color:#CCFFFF;"><input type="checkbox" checked id="fid_${rf.id}" name="fie_${menulist.id}" value="3" /></td>																									
											</tr>
										</table>
									</td>
								</tr>
							</c:forEach>
						</c:forEach>
		<!-- end -->
									
							<tr bgcolor="#EDF6FA">
								<td colspan="5" height="35" align="center"><input type="submit" value=" 修改权限 " /> &nbsp;&nbsp;<input type="button" value=" 取消修改 " /></td>
							</tr>
						</table>
						
						
					</td>
				</tr>
			</table>
			</form>
			</sf:form>
	</div>

</body>

</html>
