<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/resources/js/kkpager_blue.css" />
<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/resources/js/kkpager.min.js"></script>
<script type="text/javascript" src="/resources/js/jjs.js"></script>

<script type="text/javascript">
$(function(){
	var totalPage = ${pager.totalPage};
	var totalRecords =${pager.totalRecord} ;
	var pageNo = ${pager.pageoffSize};
	if(!pageNo){
		pageNo = 1;
	}
	//生成分页
	//有些参数是可选的，比如lang，若不传有默认值
	kkpager.generPageHtml({
		pno : pageNo,
		//总页码
		total : totalPage,
		//总数据条数
		totalRecords : totalRecords,
		//链接前部
		hrefFormer : '/masteLo/users/list',
		//链接尾部
		hrefLatter : '.html',
		getLink : function(n){return this.hrefFormer +"/"+n+ this.hrefLatter;},	
	});
});
</script>
${showManage }
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/menu/right.html">首页</a></li>
    <li><a href="#">加盟商列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar"><!-- 按钮html -->${sortButtonString }</ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="/resources/mfolder/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="imgtable">
    	<thead>
    	<tr>
        <th width="10px;"><input name="" type="checkbox" value="" onclick="SelectAll('chekclistid');"/> </th>
	    <th width="100px;">缩略图</th>
	    <th>经营者</th>
	    <th>加盟店名</th>
	    <th>TLE / QQ</th>
	    <th>推荐/使用状态</th>
	    <th>加盟时间</th>
	    <th>开业时间</th>
	    <th>管理 费到期</th>
	    <th width="60px;">点击</th>
	
        </tr>
        </thead>
        
        <tbody> 
        <c:forEach items="${pager.dates}" var="user" varStatus="stuts">
	        <tr>
		        <td><input name="chekclistid" type="checkbox" value="${user.id }" /></td>
		        <td class="imgtd"><img src="${user.usComImg}" onload="javascript:DrawImage(this,'100');" border="0"/></td>		        
		        <td>${user.userZname}</td>
		        <td>${user.userComname}</td>		        
		        <td>${user.userTel} / ${user.userqq }</td>
		        <td><c:if test="${user.isRecommend == 1 }"><font color="red">推荐</font></c:if><c:if test="${user.isRecommend == 0 }">否</c:if>/
		        									<c:if test="${user.userState == 1 }"><font color="red">授权</font></c:if><c:if test="${user.userState == 0 }">停业</c:if></td>		        
		        <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${user.userstartime}" /></td>
		        <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${user.openTimes}" /></td>
		        <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${user.guanliEndtime}" /></td>
		        <td>${user.looknum}</td>
	        </tr>  
	    </c:forEach>   
        </tbody>
    </table>
        
    <div style="width:800px;margin:0 auto;">
    	<div id="kkpager"></div>
    </div>    
    </div>
</body>

</html>
