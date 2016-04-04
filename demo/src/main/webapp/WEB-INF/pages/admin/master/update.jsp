<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/javascript">
        function eduMaster()   {
        	var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  //e-mail 
	        var userpswd = $F('userpswd');
	        var tename = $F('tename');
	        var temail = $F('temail');
	        var tel = $F('tel');
	        var tecaption = $F('tecaption');
        
		if(true){
       		if (userpswd.length<5 || userpswd.length>16){$('cuserpswd').innerHTML = '<font color=red>密码 输入不符合规范,必须在 5到16个字符之间</font>';	
      		 return false;
      		 }else{ $('cuserpswd').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
  			if (tename.length<2 || tename.length>20){$('ctename').innerHTML = '<font color=red>昵称 输入不符合规范,必须在2到20个字符之间</font>';
        	  return false;
        	 }else{ $('ctename').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	if (!pattern.test(temail)){$('ctemail').innerHTML = '<font color=red>请输入正确的邮箱</font>';
        	  return false;
        	}else{$('ctemail').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  }
 			if (isNaN(tel) || tel.length<7 || tel.length>30){$('ctel').innerHTML = '<font color=red>请输入电话号码</font>';
        	  return false;
        	 }else{ $('ctel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	if (tecaption.length<2 || tecaption.length>50){$('ctecaption').innerHTML = '<font color=red>密码 输入不符合规范,必须在 2到50个字符之间</font>';	
      		 return false;
      		 }else{ $('ctecaption').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
		}
     
    }
    function ceduMaster(checkOpt){
	   		var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  //e-mail 
	        var userpswd = $F('userpswd');
	        var tename = $F('tename');
	        var temail = $F('temail');
	        var tel = $F('tel');
	        var tecaption = $F('tecaption');
	        
        switch(checkOpt){
        	case "userpswd":
        		if (userpswd.length<5 || userpswd.length>16){$('cuserpswd').innerHTML = '<font color=red>密码 输入不符合规范,必须在 5到16个字符之间</font>';
        		}else{$('cuserpswd').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />"; }
        		break;
        	case "tename":
        		if (tename.length<2 || tename.length>20){$('ctename').innerHTML = '<font color=red>昵称 输入不符合规范,必须在2到20个字符之间</font>';
        		}else{$('ctename').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";}
        		break;
        	case "temail":
        		if (!pattern.test(temail)){$('ctemail').innerHTML = '<font color=red>输入正确的邮箱 eg:cxjdlong@qq.com</font>';
        		}else{$('ctemail').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />"; }
        		break;
        	case "tel":
        		if (isNaN(tel) || tel.length<7 || tel.length>30){$('ctel').innerHTML = '<font color=red>请输入电话号码</font>';
        		}else{	$('ctel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";}
        		break;
			case "tecaption":
        		if (tecaption.length<2 || tecaption.length>50){$('ctecaption').innerHTML = '<font color=red>&nbsp;&nbsp;描述 输入不符合规范,必须在 2到50个字符之间</font>';
        		}else{	$('ctecaption').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";}
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
    <li><a href="#">管理员修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <sf:form id="myform" method="post" action="/masteLo/master/update.html" modelAttribute="cmaster" onsubmit="return eduMaster();" enctype="multipart/form-data">
    <ul class="forminfo">
	    <li><label>登陆ID</label><input type="hidden" name="id" value="${muser.id }" /><input id="userid" onblur="ceduMaster('userid');" name="userid" type="text" class="dfinput" readonly value="${muser.userid }" /><i id="cuserid"></i></li>
	    <li><label>登陆密码</label><input id="userpswd" onblur="ceduMaster('userpswd');" name="userpswd" type="text" class="dfinput" value="default" /><i id="cuserpswd"><font color=red>不修改密码 请输入 【default】</font>* 请输入密码 5到16个字符之间< </i></li>
	    <li><label>用户昵称</label><input id="tename" onblur="ceduMaster('tename');" name="tename" type="text" class="dfinput" value="${muser.tename }" /><i id="ctename">* 联系人名字</i></li>
	    <li><label>用户邮箱</label><input id="temail" onblur="ceduMaster('temail');" name="temail" type="text" class="dfinput" value="${muser.temail }" /><i id="ctemail">* eg:cxjdlong@qq.com</i></li>
	    <li><label>联系电话</label><input id="tel" onblur="ceduMaster('tel');" name="tel" type="text" class="dfinput" value="${muser.tel }" /><i id="ctel">* 请输入联系电话号码</i></li>
	    <li><label>描述</label><textarea id="tecaption" onblur="ceduMaster('tecaption');" name="tecaption" cols="" rows="" class="textinput">${muser.tecaption }</textarea><font style="color:#7f7f7f;" id="ctecaption">&nbsp;&nbsp;* 管理描述2到50个字符</font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
   </sf:form>
    
    
    </div>


</body>

</html>
