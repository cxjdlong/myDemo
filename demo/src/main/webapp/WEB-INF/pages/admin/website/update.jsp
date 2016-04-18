<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站基本设置</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/javascript">
        function eduSite()   {
        	var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  //e-mail 
	        var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');
	        var webUrl = $F('webUrl');
	        var webName = $F('webName');
	        var propasswd = $F('propasswd');
	        var webComName = $F('webComName');
	        var webIcp = $F('webIcp');
	        var webAdmintel = $F('webAdmintel');
	        var webAdminName = $F('webAdminName');
	        var webAdminqq = $F('webAdminqq');
	        var webEmail = $F('webEmail');
	        var webComaddr = $F('webComaddr');
	        var webStel = $F('webStel');
	        var webtel = $F('webtel');
        
		if(true){
       		if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
  			if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>描述 输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	
			if (webUrl.length<5 || webUrl.length>300){$('cwebUrl').innerHTML = '<font color=red>网址 输入不符合规范,必须在5到300个字符之间</font>';
        	  return false;
        	 }else{ $('cwebUrl').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (webName.length<5 || webName.length>500){$('cwebName').innerHTML = '<font color=red>网站名字 输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cwebName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	
        	if (propasswd.length<5 || propasswd.length>50){$('cpropasswd').innerHTML = '<font color=red>产品密码 输入不符合规范,必须在5到50个字符之间</font>';
      	  return false;
      	 }else{ $('cpropasswd').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (webComName.length<5 || webComName.length>100){$('cwebComName').innerHTML = '<font color=red>公司名字 输入不符合规范,必须在5到100个字符之间</font>';
        	  return false;
        	 }else{ $('cwebComName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (webIcp.length<5 || webIcp.length>500){$('cwebIcp').innerHTML = '<font color=red>版权代码  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cwebIcp').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (webAdmintel.length<5 || webAdmintel.length>30){$('cwebAdmintel').innerHTML = '<font color=red>管理员电话  输入不符合规范,必须在5到30个字符之间</font>';
        	  return false;
        	 }else{ $('cwebAdmintel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (webAdminName.length<1 || webAdminName.length>50){$('cwebAdminName').innerHTML = '<font color=red>管理员名字  输入不符合规范,必须在2到50个字符之间</font>';
        	  return false;
        	 }else{ $('cwebAdminName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	 if (webAdminqq.length<5 || webAdminqq.length>12){$('cwebAdminqq').innerHTML = '<font color=red>管理员QQ 输入不符合规范,必须在5到12个字符之间</font>';
        	  return false;
        	 }else{ $('cwebAdminqq').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	
        	if (!pattern.test(webEmail)){$('cwebEmail').innerHTML = '<font color=red>请输入正确的邮箱 eg admin@qq.com </font>';
        	  return false;
        	}else{$('cwebEmail').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  }
        	
        	if (webComaddr.length<5 || webComaddr.length>200){$('cwebComaddr').innerHTML = '<font color=red>公司地址 输入不符合规范,必须在5到200个字符之间</font>';
        	  return false;
        	 }else{ $('cwebComaddr').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }

        	
 			if (isNaN(webStel) || webStel.length<7 || webStel.length>50){$('cwebStel').innerHTML = '<font color=red>请输入电话号码</font>';
        	  return false;
        	 }else{ $('cwebStel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
 			if (webtel.length<7 || webtel.length>100){$('cwebStel').innerHTML = '<font color=red>请输入电话号码 多个已空格或者，分开</font>';
        	  return false;
        	 }else{ $('cwebtel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
		}
     
    }
    function ceduSite(checkOpt){
    
        	var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  //e-mail 
	        var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');
	        var webUrl = $F('webUrl');
	        var webName = $F('webName');
	        var propasswd = $F('propasswd');
	        var webComName = $F('webComName');
	        var webIcp = $F('webIcp');
	        var webAdmintel = $F('webAdmintel');
	        var webAdminName = $F('webAdminName');
	        var webAdminqq = $F('webAdminqq');
	        var webEmail = $F('webEmail');
	        var webComaddr = $F('webComaddr');
	        var webStel = $F('webStel');
	        var webtel = $F('webtel');
	        
        switch(checkOpt){
        	case "seoKeyword":
         		if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
        	case "seoDescription":
        		if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;
        	case "webUrl":
        		if (webUrl.length<5 || webUrl.length>300){$('cwebUrl').innerHTML = '<font color=red>网站地址 输入不符合规范,必须在5到50个字符之间</font>';
        	  return false;
        	 }else{ $('cwebUrl').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
        	case "webName":
        		if (webName.length<5 || webName.length>500){$('cwebName').innerHTML = '<font color=red>网站名字  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cwebName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
        		
        	case "propasswd":
        		if (propasswd.length<5 || propasswd.length>50){$('cpropasswd').innerHTML = '<font color=red>产品密码  输入不符合规范,必须在5到50个字符之间</font>';
        	  return false;
        	 }else{ $('cpropasswd').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
        		
			case "webComName":
        		if (webComName.length<5 || webComName.length>100){$('cwebComName').innerHTML = '<font color=red>公司名字 输入不符合规范,必须在5到50个字符之间</font>';
        	  return false;
        	 }else{ $('cwebComName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;

			case "webIcp":
        		if (webIcp.length<5 || webIcp.length>500){$('cwebIcp').innerHTML = '<font color=red>版权代码  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cwebIcp').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
			case "webAdmintel":
        		if (webAdmintel.length<5 || webAdmintel.length>30){$('cwebAdmintel').innerHTML = '<font color=red>管理员电话 输入不符合规范,必须在5到15个字符之间</font>';
        	  return false;
        	 }else{ $('cwebAdmintel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
			case "webAdminName":
        		if (webAdminName.length<1 || webAdminName.length>50){$('cwebAdminName').innerHTML = '<font color=red>管理名字 输入不符合规范,必须在2到20个字符之间</font>';
        	  return false;
        	 }else{ $('cwebAdminName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
			case "webAdminqq":
        		 if (webAdminqq.length<5 || webAdminqq.length>12){$('cwebAdminqq').innerHTML = '<font color=red>管理员QQ 输入不符合规范,必须在5到12个字符之间</font>';
        	  return false;
        	 }else{ $('cwebAdminqq').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
			case "webEmail":
        		if (!pattern.test(webEmail)){$('cwebEmail').innerHTML = '<font color=red>请输入正确的邮箱eg admin@qq.com	</font>';
        	  return false;
        	}else{$('cwebEmail').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  }
        	
        		break;
			case "webComaddr":
        		if (webComaddr.length<5 || webComaddr.length>200){$('cwebComaddr').innerHTML = '<font color=red>公司地址 输入不符合规范,必须在5到50个字符之间</font>';
        	  return false;
        	 }else{ $('cwebComaddr').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }

        	
        		break;
        	case "webStel":
        		if (webStel.length<7 || webStel.length>50){$('cwebStel').innerHTML = '<font color=red>请输入电话号码</font>';
        	  return false;
        	 }else{ $('cwebStel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
			case "webtel":
        		if (webtel.length<7 || webtel.length>100){$('cwebtel').innerHTML = '<font color=red>请输入电话号码 多个已空格或者，分开</font>';
        	  return false;
        	 }else{ $('cwebtel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
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
    <li><a href="#">网站基本设置</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <sf:form id="myform" method="post" action="/masteLo/webset/update.html" modelAttribute="webset" onsubmit="return eduSite();" enctype="multipart/form-data">
    <ul class="forminfo">
	    <li><label>关键字</label><input type="hidden" name="id" value='${webconf.id}'/><textarea id="seoKeyword" onblur="ceduSite('seoKeyword');" name="seoKeyword" cols="" rows="" class="textinput">${webconf.seoKeyword }</textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>描述</label><textarea id="seoDescription" onblur="ceduSite('seoDescription');" name="seoDescription" cols="" rows="" class="textinput">${webconf.seoDescription }</textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>
	    <li><label>网址</label><input id="webUrl" onblur="ceduSite('webUrl');" name="webUrl" type="text" class="dfinput" value="${webconf.webUrl }" /><i id="cwebUrl">* 网站地址 必须在5到50个字符之间</i></li>
	    <li><label>网站名</label><input id="webName" onblur="ceduSite('webName');" name="webName" type="text" class="dfinput" value="${webconf.webName }" /><i id="cwebName">* 网站名字  必须在5到500个字符之间</i></li>
	    <li><label>产品密码</label><input id="propasswd" onblur="ceduSite('propasswd');" name="propasswd" type="text" class="dfinput" value="${webconf.propasswd }" /><i id="cpropasswd">* 查询密码  必须在5到50个字符之间</i></li>	    
	    <li><label>公司名字</label><input id="webComName" onblur="ceduSite('webComName');" name="webComName" type="text" class="dfinput" value="${webconf.webComName }" /><i id="cwebComName">* 公司名字 必须在5到50个字符之间</i></li>
	    <li><label>管理员电话</label><input id="webAdmintel" onblur="ceduSite('webAdmintel');" name="webAdmintel" type="text" class="dfinput" value="${webconf.webAdmintel }" /><i id="cwebAdmintel">* 管理员电话 必须在5到15个字符之间</i></li>
	    <li><label>管理员名字</label><input id="webAdminName" onblur="ceduSite('webAdminName');" name="webAdminName" type="text" class="dfinput" value="${webconf.webAdminName }" /><i id="cwebAdminName">* 管理名字 必须在2到20个字符之间</i></li>
	    <li><label>管理员QQ</label><input id="webAdminqq" onblur="ceduSite('webAdminqq');" name="webAdminqq" type="text" class="dfinput" value="${webconf.webAdminqq }" /><i id="cwebAdminqq">* 管理员QQ 必须在5到12个字符之间</i></li>
	    <li><label>网站邮箱</label><input id="webEmail" onblur="ceduSite('webEmail');" name="webEmail" type="text" class="dfinput" value="${webconf.webEmail }" /><i id="cwebEmail">* 正确的邮箱eg admin@qq.com</i></li>
	    <li><label>公司地址</label><input id="webComaddr" onblur="ceduSite('webComaddr');" name="webComaddr" type="text" class="dfinput" value="${webconf.webComaddr }" /><i id="cwebComaddr">* 公司地址 必须在5到50个字符之间</i></li>
	    <li><label>服务400</label><input id="webStel" onblur="ceduSite('webStel');" name="webStel" type="text" class="dfinput" value="${webconf.webStel }" /><i id="cwebStel">* 请输入电话号码 S 服务电话 400等</i></li>
	    <li><label>网站电话</label><input id="webtel" onblur="ceduSite('webtel');" name="webtel" type="text" class="dfinput" value="${webconf.webtel }" /><i id="cwebtel">* 请输入电话号码 多个已空格或者，分开</i></li>    	    
	    <li><label>版权所以</label><textarea id="webIcp" onblur="ceduSite('webIcp');" name="webIcp" cols="" rows="" class="textinput">${webconf.webIcp }</textarea><font style="color:#7f7f7f;" id="cwebIcp">&nbsp;&nbsp;* 版权代码 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
