<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/javascript" src="/resources/js/ajaxu.js"></script>
<script type="text/javascript">
        function addMaster()   {
        	var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  //e-mail 
	        var userid = $F('userid');
	        var userpswd = $F('userpswd');
	        var tename = $F('tename');
	        var temail = $F('temail');
	        var tel = $F('tel');
	        var tecaption = $F('tecaption');
        
		if(true){
       		if (userid.length<5 || userid.length>16){$('cuserid').innerHTML = '<font color=red>用户ID 输入不符合规范,必须在 5到16个字符之间</font>';	
      		 return false;
      		 }else{ $('cuserid').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
       		if (userpswd.length<5 || userpswd.length>16){$('cuserpswd').innerHTML = '<font color=red>密码 输入不符合规范,必须在 5到16个字符之间</font>';	
      		 return false;
      		 }else{ $('cuserpswd').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
  			if (tename.length<2 || tename.length>8){$('ctename').innerHTML = '<font color=red>昵称 输入不符合规范,必须在2到8个字符之间</font>';
        	  return false;
        	 }else{ $('ctename').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	if (!pattern.test(temail)){$('ctemail').innerHTML = '<font color=red>请输入正确的邮箱</font>';
        	  return false;
        	}else{$('ctemail').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  }
 			if (isNaN(tel) || tel.length<7 || tel.length>12){$('ctel').innerHTML = '<font color=red>请输入电话号码</font>';
        	  return false;
        	 }else{ $('ctel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	if (tecaption.length<2 || tecaption.length>30){$('ctecaption').innerHTML = '<font color=red>密码 输入不符合规范,必须在 2到30个字符之间</font>';	
      		 return false;
      		 }else{ $('ctecaption').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
		}
     
    }
    function caddMaster(checkOpt){
	   		var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;  //e-mail 
	   		var userid = $F('userid');
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
        		if (tename.length<2 || tename.length>10){$('ctename').innerHTML = '<font color=red>昵称 输入不符合规范,必须在2到10个字符之间</font>';
        		}else{$('ctename').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";}
        		break;
        	case "temail":
        		if (!pattern.test(temail)){$('ctemail').innerHTML = '<font color=red>输入正确的邮箱 eg:cxjdlong@qq.com</font>';
        		}else{$('ctemail').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />"; }
        		break;
        	case "tel":
        		if (isNaN(tel) || tel.length<7 || tel.length>12){$('ctel').innerHTML = '<font color=red>请输入电话号码</font>';
        		}else{	$('ctel').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";}
        		break;
			case "tecaption":
        		if (tecaption.length<2 || tecaption.length>16){$('ctecaption').innerHTML = '<font color=red>&nbsp;&nbsp;描述 输入不符合规范,必须在 2到30个字符之间</font>';
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
    <li><a href="#">管理员 添加</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <sf:form id="myform" method="post" action="/masteLo/master/add.html" modelAttribute="master" onsubmit="return addMaster();">
    <ul class="forminfo">
	    <li><label>登陆ID</label><input id="userid" onblur="chkUser();" name="userid" type="text" class="dfinput" value="" /><i id="cuserid">* 请输入5到10个字符之间 </i></li>
	    <li><label>登陆密码</label><input id="userpswd" onblur="caddMaster('userpswd');" name="userpswd" type="text" class="dfinput" value="" /><i id="cuserpswd"><font color=red>密码禁止 请输入 【default】</font>* 请输入密码 5到16个字符之间< </i></li>
	    <li><label>用户昵称</label><input id="tename" onblur="caddMaster('tename');" name="tename" type="text" class="dfinput" value="" /><i id="ctename">* 联系人名字</i></li>
	    <li><label>用户邮箱</label><input id="temail" onblur="caddMaster('temail');" name="temail" type="text" class="dfinput" value="" /><i id="ctemail">* eg:cxjdlong@qq.com</i></li>
	    <li><label>联系电话</label><input id="tel" onblur="caddMaster('tel');" name="tel" type="text" class="dfinput" value="" /><i id="ctel">* 请输入联系电话号码</i></li>
	    <li><label>描述</label><textarea id="tecaption" onblur="caddMaster('tecaption');" name="tecaption" cols="" rows="" class="textinput"></textarea><font style="color:#7f7f7f;" id="ctecaption">&nbsp;&nbsp;* 管理描述2到16个字符</font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
