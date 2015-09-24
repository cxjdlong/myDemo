<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/mfolder/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
function SelectAll(checkboxName) { 
	var checkboxs=document.getElementsByName(checkboxName); 
	for (var i=0;i<checkboxs.length;i++) {  
		var e=checkboxs[i];  e.checked=!e.checked;
	}
}

</script>
<s:property value="showManage" escape="false"/>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/menu/right.html">首页</a></li>
    <li><a href="#">权限管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
		<form name="datelist" action="/mastLo/master_sortFun.html" method="post">	
			<table border="1" bgcolor="EDF6FA" align="center" cellpadding="0" cellspacing="0" width="100%" style="border-collapse:collapse">
				<tr>
					<td align="center" height="25" bgcolor="EDF6FA">修改管理员权限</td>
				</tr>
				<tr>
					<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;执行操作的用户： <font color="red"><s:property value="#session['MASTER_TENAME']"/> - <s:property value="#session['MASTER_USERID']"/></font>&nbsp;&nbsp;被编辑的用户 ：
					
						<select name="muser.userid" class="select3">
							<s:if test="null!=sid&&!sid.isEmpty()">
								<option value="<s:property value="sid" />"><s:property value="sid" /></option>							
							</s:if>
							<s:else>	
								<s:iterator value="page_list" status="stuts">	
								    <option value="<s:property value="userid" />"><s:property value="tename" />[<s:property value="userid" />]</option>
								</s:iterator>  
							</s:else>
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
						<s:iterator value="fieldslist" id="a" status="stuts">					
							<tr bgcolor="#FAE8C9">
								<td align="center" height="25"><s:property value="#a.fieldName" /></td>
								<td align="left">&nbsp;&nbsp;能否管理 ：<input type="checkbox" checked name="fie_<s:property value="#a.id" />" value="1" /></td>
							</tr>							
							
							<s:iterator value="#request.fieldslistb.get(#stuts.index)" status="stutsb" id="b">	
								<tr bgcolor="#FFFFFF">
									<td align="center" style="text-indent:20px"><s:property value="#b.fieldName" />&nbsp;&nbsp;&nbsp;<img src="/mfolder/images/t01.png" style="CURSOR:HAND;" border=0 width="15" height="15" onclick="SelectAll('fie_<s:property value="#b.id" />');"/></td>
									<td align="center">
										<table border="0" cellpadding="0" cellspacing="1" width="100%">
											<tr>																						
												<td align="center" style="background-color:#CCFFFF;"><input type="checkbox" checked id="fid_<s:property value="#a.id" />" name="fie_<s:property value="#b.id" />" value="1" /></td>													
												<td align="center" style="background-color:#CCFFFF;"><input type="checkbox" checked id="fid_<s:property value="#a.id" />" name="fie_<s:property value="#b.id" />" value="2" /></td>													
												<td align="center" style="background-color:#CCFFFF;"><input type="checkbox" checked id="fid_<s:property value="#a.id" />" name="fie_<s:property value="#b.id" />" value="3" /></td>																									
											</tr>
										</table>
									</td>
								</tr>
							</s:iterator>
						</s:iterator>
		<!-- end -->
									
							<tr bgcolor="#EDF6FA">
								<td colspan="5" height="35" align="center"><input type="submit" value=" 修改权限 " /> &nbsp;&nbsp;<input type="button" value=" 取消修改 " /></td>
							</tr>
						</table>
						
						
					</td>
				</tr>
			</table>
			</form>
	</div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
