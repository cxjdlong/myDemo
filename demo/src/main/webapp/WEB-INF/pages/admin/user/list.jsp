<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/mfolder/css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="/js/kkpager_blue.css" />
<script type="text/javascript" src="/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/js/kkpager.min.js"></script>
<script type="text/javascript" src="/js/jjs.js"></script>

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

function getParameter(name) { 
	var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r!=null) return unescape(r[2]); return null;
}

//init
$(function(){
	var totalPage = ${pageForm.maxPage};
	var fsid = ${id};
	var totalRecords = ${pageForm.page_record_count};
	var pageNo = ${page};
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
		hrefFormer : 'user_list',
		//链接尾部
		hrefLatter : '.html',
		getLink : function(n){return this.hrefFormer + this.hrefLatter + "?id="+fsid+"&page="+n;},
		
		
	});
});
</script>
<s:property value="showManage" escape="false"/>
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
    
    	<ul class="toolbar"><!-- 按钮html --> <s:property value="sortbutton" escape="false" /></ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="/mfolder/images/t05.png" /></span>设置</li>
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
        <s:iterator value="page_list" id="a" status="stuts">      
	        <tr>
		        <td><input name="chekclistid" type="checkbox" value="<s:property value="#a.id" />" /></td>
		        <td class="imgtd"><img src="<s:property value="#a.usComImg" />" onload="javascript:DrawImage(this,'100');" border="0"/></td>		        
		        <td><s:property value="#a.userZname" /></td>
		        <td><s:property value="#a.userComname" /></td>		        
		        <td><s:property value="#a.userTel" /> / <s:property value="#a.userqq" /></td>
		        <td><s:if test="#a.isRecommend==1"><font color="red">推荐</font></s:if><s:else>否</s:else>/<s:if test="#a.userState==1"><font color="red">授权</font></s:if><s:else>停业</s:else></td>		        
		        <td><s:date name="#a.userstartime" format="yyyy-MM-dd hh:mm:ss"/></td>
		        <td><s:date name="#a.openTimes" format="yyyy-MM-dd hh:mm:ss"/></td>
		        <td><s:date name="#a.guanliEndtime" format="yyyy-MM-dd hh:mm:ss"/></td>
		        <td><s:property value="#a.looknum" /></td>
	        </tr>  
	    </s:iterator>    
        </tbody>
    </table>
    
       
    <div style="width:800px;margin:0 auto;">
    	<div id="kkpager"></div>
    </div>    
    
    
    
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
