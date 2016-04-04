<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/javascript">
        function addmessFun()   {
	        var urlName = $F('urlName');
	        var urlLink = $F('urlLink');
	        var urlOrder = $F('urlOrder');
        
		if(true){
       		if (urlName.length<2 || urlName.length>50){$('curlName').innerHTML = '<font color=red>* 信息分类名字 必须在2到50个字符之间</font>';	
      		 return false;
      		 }else{ $('curlName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (urlLink.length<1 || urlLink.length>200){$('curlLink').innerHTML = '<font color=red>* URL 必须在200个字符之间</font>';	
      		 return false;
      		 }else{ $('curlLink').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		
      		if (urlOrder.length<1 || isNaN(urlOrder)){$('curlOrder').innerHTML = '<font color=red>* 排序ID必须为数字</font>';	
      		 return false;
      		 }else{ $('curlOrder').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
		}
     
    }
    function caddmessFun(checkOpt){
	        var urlName = $F('urlName');
	        var urlLink = $F('urlLink');
	        var urlOrder = $F('urlOrder');
	        
        switch(checkOpt){
        	case "urlName":
	       		if (urlName.length<2 || urlName.length>50){$('curlName').innerHTML = '<font color=red>* 信息分类名字 必须在2到50个字符之间</font>';	
      		 return false;
      		 }else{ $('curlName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        		break;
        	case "urlLink":
        		if (urlLink.length<1 || urlLink.length>200){$('curlLink').innerHTML = '<font color=red>* URL 必须在200个字符之间</font>';	
      		 return false;
      		 }else{ $('curlLink').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        		break;
        	case "urlOrder":
        		if (urlOrder.length<1 || isNaN(urlOrder)){$('curlOrder').innerHTML = '<font color=red>* 排序ID必须为数字</font>';	
      		 return false;
      		 }else{ $('curlOrder').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        		break;
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
    <li><a href="#">友情链接 修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
  
   <sf:form id="myform" method="post" action="/masteLo/link/update.html" modelAttribute="link" onsubmit="return addmessFun();" enctype="multipart/form-data">
    <ul class="forminfo">
	    <li><label>列表名字</label><input type="hidden" name="id" value="${link.id}" /><input id="urlName" onblur="caddmessFun('urlName');" name="urlName" type="text" class="dfinput" value="${link.urlName }" /><i id="curlName">* 信息分类 名字</i></li>
	    <li><label>对于URL</label><input id="urlLink" onblur="caddmessFun('urlLink');" name="urlLink" type="text" class="dfinput" value="${link.urlLink }" /><i id="curlLink">* http://开头</i></li>
	    <li><label>排序ID</label><input id="urlOrder" onblur="caddmessFun('urlOrder');" name="urlOrder" type="text" class="dfinput" value="${link.urlOrder }" /><i id=curlOrder>* 数字越小 越靠前</i></li>	  
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
