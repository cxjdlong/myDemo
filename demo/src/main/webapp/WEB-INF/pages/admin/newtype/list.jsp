<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/resources/js/kkpager_blue.css" />
<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/resources/js/tjs.js"></script>
${showManage }
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/menu/right.html">首页</a></li>
    <li><a href="#">信息分类列表</a></li>
    </ul>
    </div>
 
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar"><!-- 按钮html --> <s:property value="sortbutton" escape="false" /></ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="/resources/mfolder/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
	        <th><input name="" type="checkbox" value="" onclick="SelectAll('chekclistid');"/></th>
	        <th>分类名字</th>
	        <th>URL</th>
        </tr>
        </thead>
        
        <tbody> 
        <c:forEach items="${pager.dates}" var="newstype" varStatus="stuts">   
	        <tr>
		        <td width="25"><input name="chekclistid" type="checkbox" value="${ newstype.id}" /></td>
		        <td>${ newstype.className}</td>
		        <td>${ newstype.url}</td>		     
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
