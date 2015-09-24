<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/JavaScript" src="/js/fckupload.js"></script>
<script type="text/javascript" src="/js/jsfun.js"></script>
<script language="javascript" type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
        function addmessFun()   {
  
	        var seoKeyword = $F('seoKeyword');
			var seoDescription = $F('seoDescription');
			var userName = $F('userName');
			var userZname =  $F('userZname');
			var userPass = $F('userPass');
			var userTel = $F('userTel');
			var userqq = $F('userqq');
			var uidcard = $F('uidcard');
			var uidcarImg = $F('uidcarImg');
			var usComImg = $F('usComImg');
			var author = $F('author');
			var userComname = $F('userComname');
			var userAddr = $F('userAddr');
			var userstartime = $F('userstartime');
			var openTimes = $F('openTimes');		
			var guanliEndtime = $F('guanliEndtime');
			var userNote = $F('userNote');
			var userContent = $F('tscompanyContent');
        
		if(true){
        	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

        	if (userName.length<5 || userName.length>20){$('cuserName').innerHTML = '<font color=red>* 用户名  输入不符合规范,必须在5到20个字符之间</font>';
        	  return false;
        	 }else{ $('cuserName').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
        	if (userZname.length<2 || userZname.length>15){$('cuserZname').innerHTML = '<font color=red>* 姓名输入不符合规范,必须在2到15个字符之间</font>';
        	  return false;
        	 }else{ $('cuserZname').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		
        	if (userPass.length<5 || userPass.length>20){$('cuserPass').innerHTML = '<font color=red>* 用户密码  输入不符合规范,必须在5到20个字符之间</font>';
        	  return false;
        	 }else{ $('cuserPass').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
        	if (isNaN(userTel) || userTel.length<5 || userTel.length>15){$('cuserTel').innerHTML = '<font color=red>* 请出入正确的电话号码</font>';
        	  return false;
        	 }else{ $('cuserTel').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
        	if (isNaN(userqq) || userqq.length<4 || userqq.length>15){$('cuserqq').innerHTML = '<font color=red>* 请出入正确的QQ号码</font>';
        	  return false;
        	 }else{ $('cuserqq').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
 			if (uidcard.length<15 || uidcard.length>19){$('cuidcard').innerHTML = '<font color=red>* 请输入正确的身份证号码</font>';
        	  return false;
        	 }else{ $('cuidcard').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
  			if (uidcarImg.length<1){$('cuidcarImg').innerHTML = '<font color=red>* 请上传身份证图片</font>';
        	  return false;
        	 }else{ $('cuidcarImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
  			if (usComImg.length<1){$('cusComImg').innerHTML = '<font color=red>* 请上传店铺图片</font>';
        	  return false;
        	 }else{ $('cusComImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	        	 
        	if (author.length<2 || author.length>6){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
        	if (userComname.length<2 || userComname.length>16){$('cuserComname').innerHTML = '<font color=red>* 请填写店铺名字,必须在2到16个字符之间</font>';
        	  return false;
        	 }else{ $('cuserComname').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

        	if (userAddr.length<2 || userAddr.length>50){$('cuserAddr').innerHTML = '<font color=red>* 请填写联系地址,必须在2到50个字符之间</font>';
        	  return false;
        	 }else{ $('cuserAddr').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

        	if (userstartime.length<2){$('cuserstartime').innerHTML = '<font color=red>* 请填写授权开始时间</font>';
        	  return false;
        	 }else{ $('cuserstartime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

        	if (openTimes.length<2){$('copenTimes').innerHTML = '<font color=red>* 请填写开店开始时间</font>';
        	  return false;
        	 }else{ $('copenTimes').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

        	if (guanliEndtime.length<2){$('cguanliEndtime').innerHTML = '<font color=red>* 请填管理费到期时间</font>';
        	  return false;
        	 }else{ $('cguanliEndtime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
           
 		    if (userNote.length<1){$('cuserNote').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cuserNote').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

 		    if (userContent.length<1){$('cuserContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cuserContent').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
		}
     
    }
    function caddmessFun(checkOpt){
	        var seoKeyword = $F('seoKeyword');
			var seoDescription = $F('seoDescription');
			var userName = $F('userName');
			var userZname =  $F('userZname');
			var userPass = $F('userPass');
			var userTel = $F('userTel');
			var userqq = $F('userqq');
			var uidcard = $F('uidcard');
			var uidcarImg = $F('uidcarImg');
			var usComImg = $F('usComImg');
			var author = $F('author');
			var userComname = $F('userComname');
			var userAddr = $F('userAddr');
			var userstartime = $F('userstartime');
			var openTimes = $F('openTimes');
			var guanliEndtime = $F('guanliEndtime');
			var userNote = $F('userNote');
			var userContent = $F('tscompanyContent');
	        	        
        switch(checkOpt){
        	case "seoKeyword":
         	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "seoDescription":
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userName":
        	if (userName.length<5 || userName.length>20){$('cuserName').innerHTML = '<font color=red>* 用户名  输入不符合规范,必须在5到20个字符之间</font>';
        	  return false;
        	 }else{ $('cuserName').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
        	case "userZname":
        	if (userZname.length<2 || userZname.length>15){$('cuserZname').innerHTML = '<font color=red>* 姓名输入不符合规范,必须在2到15个字符之间</font>';
        	  return false;
        	 }else{ $('cuserZname').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userPass":
        	if (userPass.length<5 || userPass.length>20){$('cuserPass').innerHTML = '<font color=red>* 用户密码  输入不符合规范,必须在5到20个字符之间</font>';
        	  return false;
        	 }else{ $('cuserPass').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userTel":
        	if (isNaN(userTel) || userTel.length<5 || userTel.length>15){$('cuserTel').innerHTML = '<font color=red>* 请出入正确的电话号码</font>';
        	  return false;
        	 }else{ $('cuserTel').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userqq":
        	if (isNaN(userqq) || userqq.length<4 || userqq.length>15){$('cuserqq').innerHTML = '<font color=red>* 请出入正确的QQ号码</font>';
        	  return false;
        	 }else{ $('cuserqq').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "uidcard":
        	if (uidcard.length<15 || uidcard.length>19){$('cuidcard').innerHTML = '<font color=red>* 请输入正确的身份证号码</font>';
        	  return false;
        	 }else{ $('cuidcard').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "uidcarImg":
        	if (uidcarImg.length<1){$('cuidcarImg').innerHTML = '<font color=red>* 请上传身份证图片</font>';
        	  return false;
        	 }else{ $('cuidcarImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "usComImg":
        	if (usComImg.length<1){$('cusComImg').innerHTML = '<font color=red>* 请上传店铺图片</font>';
        	  return false;
        	 }else{ $('cusComImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "author":
        	if (author.length<2 || author.length>6){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userComname":
        	if (userComname.length<2 || userComname.length>16){$('cuserComname').innerHTML = '<font color=red>* 请填写店铺名字,必须在2到16个字符之间</font>';
        	  return false;
        	 }else{ $('cuserComname').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userAddr":
        	if (userAddr.length<2 || userAddr.length>50){$('cuserAddr').innerHTML = '<font color=red>* 请填写联系地址,必须在2到50个字符之间</font>';
        	  return false;
        	 }else{ $('cuserAddr').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userstartime":
        	if (userstartime.length<2){$('cuserstartime').innerHTML = '<font color=red>* 请填写授权开始时间</font>';
        	  return false;
        	 }else{ $('cuserstartime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;

			case "openTimes":
        	if (openTimes.length<2){$('copenTimes').innerHTML = '<font color=red>* 请填写开店开始时间</font>';
        	  return false;
        	 }else{ $('copenTimes').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;


			case "guanliEndtime":
        	if (guanliEndtime.length<2){$('cguanliEndtime').innerHTML = '<font color=red>* 请填管理费到期时间</font>';
        	  return false;
        	 }else{ $('cguanliEndtime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userNote":
        	 if (userNote.length<1){$('cuserNote').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cuserNote').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
			case "userContent":
	       	  if (userContent.length<1){$('cuserContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
	        	  return false;
	        	 }else{ $('cuserContent').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;

        }
	
	}
	$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 100			  
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
    <li><a href="#">信息修改页</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <form id="myform" name="form1" method="post" action="/mastLo/user_edtfun.html" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>关键字</label><input type="hidden" name="juser.id" value='<s:property value ="juser.id" />'/><textarea id="seoKeyword" onblur="caddmessFun('seoKeyword');" name="juser.seoKeyword" cols="" rows="" class="textinput"><s:property value="juser.seoKeyword" /></textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>描述</label><textarea id="seoDescription" onblur="caddmessFun('seoDescription');" name="juser.seoDescription" cols="" rows="" class="textinput"><s:property value="juser.seoDescription" /></textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>	   
	    <li><label>用户名</label><input id="userName" onblur="caddmessFun('userName');" name="juser.userName" type="text" class="dfinput" value="<s:property value="juser.userName"/>" /><i id="cuserName">* 用户名 ，必须在5到20个字符之间</i></li>
	    <li><label>姓名</label><input id="userZname" onblur="caddmessFun('userZname');" name="juser.userZname" type="text" class="dfinput" value="<s:property value="juser.userZname"/>" /><i id="cuserZname">* 用户名字，必须在2到15个字符之间</i></li>
		<li><label>密    码</label><input id="userPass" onblur="caddmessFun('userPass');" name="juser.userPass" type="text" class="dfinput" value="<s:property value="juser.userPass"/>" /><i id="cuserPass">* 登陆密码 ，必须在5到20个字符之间</i></li>
		<li><label>联系电话</label><input id="userTel" onblur="caddmessFun('userTel');" name="juser.userTel" type="text" class="dfinput" value="<s:property value="juser.userTel"/>" /><i id="cuserTel">* 联系电话 </i></li>
	    <li><label>联系QQ</label><input id="userqq" onblur="caddmessFun('userqq');" name="juser.userqq" type="text" class="dfinput" value="<s:property value="juser.userqq"/>" /><i id="cuserqq">* 联系QQ，</i></li>
	    <li><label>证件号码</label><input id="uidcard" onblur="caddmessFun('uidcard');" name="juser.uidcard" type="text" class="dfinput" value="<s:property value="juser.uidcard"/>" /><i id="cuidcard">* 身份证号码 </i></li>
	    <li><label>证件照</label><input id="uidcarImg" onblur="caddmessFun('uidcarImg');" name="juser.uidcarImg" type="text" readonly class="dfinput" value="<s:property value="juser.uidcarImg"/>" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('uidcarImg','pic','sfz');" /><i id="cuidcarImg">*身份证正反面</i></li>
	    <li><label>商铺图片</label><input id="usComImg" onblur="caddmessFun('usComImg');" name="juser.usComImg" type="text" readonly class="dfinput" value="<s:property value="juser.usComImg"/>" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('usComImg','pic','dp');" /><i id="cusComImg">* 商铺图片</i></li>
	    <li><label>是否推荐</label>
	    <select name="juser.isRecommend">
	    	<option <s:if test="1==juser.isRecommend">selected</s:if> value='1'>&nbsp;&nbsp;推荐&nbsp;&nbsp;</option>
	    	<option <s:if test="0==juser.isRecommend">selected</s:if> value='0'>&nbsp;&nbsp;否&nbsp;</option>
	    </select><i id="cisRecommend">* 默认不推荐</i></li>
	    <li><label>商铺状态</label>
	    <select name="juser.userState">
	    	<option <s:if test="1==juser.userState">selected</s:if> value='1'>&nbsp;&nbsp;授权&nbsp;&nbsp;</option>
	    	<option <s:if test="0==juser.userState">selected</s:if> value='0'>&nbsp;&nbsp;停业&nbsp;</option>
	    </select><i id="cuserState">* 默认授权</i></li>	    
	    <li><label>发布者</label><input id="author" onblur="caddmessFun('author');" name="juser.author" type="text" class="dfinput" value="<s:property value ="juser.author" />" /><i id="cauthor">* 请填写编辑者,必须在2到5个字符之间</i></li>
	    <li><label>商铺名字</label><input id="userComname" onblur="caddmessFun('userComname');" name="juser.userComname" type="text" class="dfinput" value="<s:property value ="juser.userComname" />" /><i id="cuserComname">* 商铺授权名字</i></li>
	    <li><label>商铺地址</label><input id="userAddr" onblur="caddmessFun('userAddr');" name="juser.userAddr" type="text" class="dfinput" value="<s:property value ="juser.userAddr" />" /><i id="cuserAddr">* 商铺详细地址</i></li>
	    <li><label>授权时间</label><input id="userstartime" onblur="caddmessFun('userstartime');" name="juser.userstartime" class="Wdate" onclick="WdatePicker()" readonly type="text" class="dfinput" value="<s:property value ="juser.userstartime" />" /><i id="cuserstartime">* 授权开始时间</i></li>
	    <li><label>开店时间</label><input id="openTimes" onblur="caddmessFun('openTimes');" name="juser.openTimes" class="Wdate" onclick="WdatePicker()" readonly type="text" class="dfinput" value="<s:property value ="juser.openTimes" />" /><i id="copenTimes">* 开店开始时间</i></li>
	    <li><label>管理费到期</label><input id="guanliEndtime" onblur="caddmessFun('guanliEndtime');" name="juser.guanliEndtime" class="Wdate" onclick="WdatePicker()" readonly type="text" class="dfinput" value="<s:property value ="juser.guanliEndtime" />" /><i id="cguanliEndtime">* 管理费到期时间</i></li>
	    <li><label>备相关注</label><textarea id="userNote" onblur="caddmessFun('userNote');" name="juser.userNote" cols="" rows="" class="textinput"><s:property value="juser.userNote" /></textarea><i id="cuserNote">* 备注</i></li>	    	    
	    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>	  
	    <textarea name="juser.userContent" id="tscompanyContent" rows="8" style="display:none"><s:property value ="juser.userContent" /></textarea>
		           <iframe id="FCKeditor1___Frame" src="/Editor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="cuserContent">&nbsp;&nbsp;* 资料内容 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    
    </div>


</body>

</html>
