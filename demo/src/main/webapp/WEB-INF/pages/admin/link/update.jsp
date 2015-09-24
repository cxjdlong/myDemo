<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript">
        function addmessFun()   {
	        var urlName = $F('urlName');
	        var urlLink = $F('urlLink');
	        var urlOrder = $F('urlOrder');
        
		if(true){
       		if (urlName.length<2 || urlName.length>10){$('curlName').innerHTML = '<font color=red>* 信息分类名字 必须在2到10个字符之间</font>';	
      		 return false;
      		 }else{ $('curlName').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (urlLink.length<1 || urlLink.length>50){$('curlLink').innerHTML = '<font color=red>* URL 必须在50个字符之间</font>';	
      		 return false;
      		 }else{ $('curlLink').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		
      		if (urlOrder.length<1 || isNaN(urlOrder)){$('curlOrder').innerHTML = '<font color=red>* 排序ID必须为数字</font>';	
      		 return false;
      		 }else{ $('curlOrder').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
		}
     
    }
    function caddmessFun(checkOpt){
	        var urlName = $F('urlName');
	        var urlLink = $F('urlLink');
	        var urlOrder = $F('urlOrder');
	        
        switch(checkOpt){
        	case "urlName":
	       		if (urlName.length<2 || urlName.length>10){$('curlName').innerHTML = '<font color=red>* 信息分类名字 必须在2到10个字符之间</font>';	
      		 return false;
      		 }else{ $('curlName').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        		break;
        	case "urlLink":
        		if (urlLink.length<1 || urlLink.length>50){$('curlLink').innerHTML = '<font color=red>* URL 必须在50个字符之间</font>';	
      		 return false;
      		 }else{ $('curlLink').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        		break;
        	case "urlOrder":
        		if (urlOrder.length<1 || isNaN(urlOrder)){$('curlOrder').innerHTML = '<font color=red>* 排序ID必须为数字</font>';	
      		 return false;
      		 }else{ $('curlOrder').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        		break;
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
    <li><a href="#">友情链接 修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <form id="myform" method="post" action="/mastLo/website_ledtfun.html" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>列表名字</label><input type="hidden" name="clink.id" value="<s:property value="clink.id" />" /><input id="urlName" onblur="caddmessFun('urlName');" name="clink.urlName" type="text" class="dfinput" value="<s:property value="clink.urlName" />" /><i id="curlName">* 信息分类 名字</i></li>
	    <li><label>对于URL</label><input id="urlLink" onblur="caddmessFun('urlLink');" name="clink.urlLink" type="text" class="dfinput" value="<s:property value="clink.urlLink" />" /><i id="curlLink">* http://开头</i></li>
	    <li><label>排序ID</label><input id="urlOrder" onblur="caddmessFun('urlOrder');" name="clink.urlOrder" type="text" class="dfinput" value="<s:property value="clink.urlOrder" />" /><i id=curlOrder>* 数字越小 越靠前</i></li>	  
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    
    </div>


</body>

</html>
