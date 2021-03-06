<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/resources/js/kkpager_blue.css" />
<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/resources/js/kkpager.min.js"></script>
<script type="text/javascript" src="/resources/js/pjs.js"></script>
<script type="text/javascript">
$(function(){
	var totalPage = ${pager.totalPage};
	var totalRecords =${pager.totalRecord} ;
	var pageNo = ${pager.pageoffSize};
	var sortID = ${sortID};
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
		hrefFormer : '/masteLo/pros/list',
		//链接尾部
		hrefLatter : '.html',
		getLink : function(n){return this.hrefFormer +"/"+n+ this.hrefLatter+"?sortID="+sortID;},	
	});
});
</script>
${showManage }
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/cxjdlong/menu/right.html">首页</a></li>
    <li><a href="#">产品列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    	<ul class="toolbar"><!-- 按钮html --> ${sortButtonString }</ul>
      <ul class="toolbar1"><li><span><img src="/resources/mfolder/images/t05.png" /></span>设置</li> </ul>
    	<ul class="seachform"><sf:form id="myform" method="get" modelAttribute="user" enctype="multipart/form-data" action="/masteLo/pros/select.html"><input name="sortID" type="hidden" value="${sortID}"> <input name="selectKey" type="text" class="scinput" value=""/>&nbsp;&nbsp;<input type="submit" class="scbtn" value="查询"/></sf:form></ul>
    </div>
    
    
    <table class="imgtable">
    	<thead>
    	<tr>
        <th width="10px;"><input name="" type="checkbox" value="" onclick="SelectAll('chekclistid');"/> </th>
	    <th width="100px;">缩略图</th>
	    <th>标题</th>
	    <th>分类</th>
	    <th width="60px;">推荐</th>
	    <th>发布人</th>
	    <th>添加时间</th>
	    <th width="60px;">点击</th>

        </tr>
        </thead>
        
        <tbody> 
        <c:forEach items="${pager.dates}" var="pro" varStatus="stuts">
	        <tr>
		        <td><input name="chekclistid" type="checkbox" value="${pro.id}" /></td>
		        <td class="imgtd"><img src="${pro.proImg }" onload="javascript:DrawImage(this,'100');" border="0"/></td>
		        <td>${pro.productName}</td>
		        <td>${pro.protype.className}</td>
		        <td><c:if test="${pro.isRecommend==1 }"><font color="red">推荐</font></c:if><c:if test="${pro.isRecommend == 0 }">否</c:if></td>
		        <td>${pro.author}</td>
		        <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${pro.addTimes}" /></td>
		        <td>${pro.looknum}</td>
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
