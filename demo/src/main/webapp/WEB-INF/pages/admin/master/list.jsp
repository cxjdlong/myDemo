<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/resources/js/kkpager_blue.css" />
<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/resources/js/kkpager.min.js"></script>
<script type="text/javascript" src="/resources/js/mjs.js"></script>

<script type="text/javascript">
//init
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
		hrefFormer : '/masteLo/master/list',
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
    <li><a href="/cxjdlong/menu/right.html">首页</a></li>
    <li><a href="#">管理员列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar"><!-- 按钮html --> ${sortButtonString }</ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="/resources/mfolder/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" onclick="SelectAll('chekclistid');"/></th>
        <th>登陆账号<i class="sort"><img src="/resources/mfolder/images/px.gif" /></i></th>
        <th>用户名字</th>
        <th>身份描述</th>
        <th>E-mail</th>
        <th>创建时间</th>
        <th>最后登陆/登陆IP</th>
        <th>联系电话</th>
        </tr>
        </thead>
        
        <tbody> 
        <c:forEach items="${pager.dates}" var="master" varStatus="stuts">     
	        <tr>
		        <td width="25"><input name="chekclistid" type="checkbox" value="${master.id }" /></td>
		        <td>${master.userid }</td>
		        <td>${master.tename }</td>
		        <td>${master.tecaption }</td>
		        <td>${master.temail }</td>
		        <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${master.addusertime }" /></td>
		        <td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${master.logintime }" />/${master.loginIp }</td>
		        <td>${master.tel }</td>
	        </tr>  
	    </c:forEach>   
        </tbody>
    </table>
    
   
    <div style="width:800px;margin:0 auto;">
    	<div id="kkpager"></div>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="/mfolder/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
