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
	        var className = $F('className');
	        var url = $F('url');
        
		if(true){
       		if (className.length<2 || className.length>10){$('cclassName').innerHTML = '<font color=red>* 信息分类名字 必须在2到10个字符之间</font>';	
      		 return false;
      		 }else{ $('cclassName').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (url.length<5 || url.length>16){$('curl').innerHTML = '<font color=red>* URL 必须在 4到30个字符之间</font>';	
      		 return false;
      		 }else{ $('curl').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
		}
     
    }
    function caddmessFun(checkOpt){
	        var className = $F('className');
	        var url = $F('url');
	        
        switch(checkOpt){
        	case "className":
	       		if (className.length<2 || className.length>10){$('cclassName').innerHTML = '<font color=red>* 信息分类名字 必须在2到10个字符之间</font>';	
	      		 return false;
	      		 }else{ $('cclassName').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        		break;
        	case "url":
        		if (url.length<5 || url.length>16){$('curl').innerHTML = '<font color=red>* URL 必须在 4到30个字符之间</font>';	
	      		 return false;
	      		 }else{ $('curl').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
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
    <li><a href="#">信息分类修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <form id="myform" method="post" action="/mastLo/anews_tedtfun.html" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>列表名字</label><input type="hidden" name="newtype.id" value="<s:property value="newtype.id" />" /><input id="className" onblur="caddmessFun('className');" name="newtype.className" type="text" class="dfinput" value="<s:property value="newtype.className" />" /><i id="cclassName">* 信息分类 名字</i></li>
	    <li><label>对于URL</label><input id="url" onblur="caddmessFun('url');" name="newtype.url" type="text" class="dfinput" value="<s:property value="newtype.url" />" /><i id="curl">* 对于URL:首页使用居多</i></li>	  
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    
    </div>


</body>

</html>
