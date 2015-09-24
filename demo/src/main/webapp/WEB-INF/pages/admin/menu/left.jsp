<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" href="/resources/mfolder/css/style.css" />
<script language="JavaScript" src="/resources/mfolder/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">

	<div class="lefttop"><span></span>通讯录</div>
    
    <dl class="leftmenu">
    <c:forEach items="${rf}" var="rf" varStatus="stuts">
  			
  			    <dd>
				    <div class="title">
				    <span><img src="/resources/mfolder/images/leftico01.png" /></span>[${rf.fieldName }]
				    </div>
				    
		
			    	<ul class="menuson">
					   <c:forEach items="${menulist[stuts.index]}" var="menulist" varStatus="stutsb">
					   	 	
					   		<li<c:if test="${stutsb.index==0}"> class="active"</c:if>><cite></cite><a href="${menulist.resString }${menulist.parameter}" target="rightFrame">${menulist.fieldName}</a><i></i></li>
					   		
			         </c:forEach>
			      </ul>    
			    </dd>
			
			
	</c:forEach>
 
    </dl>
    
</body>
</html>
