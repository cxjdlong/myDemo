<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/js/prototype.js"></script>
<script type="text/javascript" src="/js/jsfun.js"></script>
<script language="javascript" type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
        function addmessFun()   {
	        var seoKeyword = $F('seoKeyword');
			var seoDescription = $F('seoDescription');
			var picname = $F('picname');
			var classkey = $F('classkey');
			var picurl = $F('picurl');
			var author = $F('author');
			var picOrder = $F('picOrder');
			var picImg = $F('picImg');
			var picstartime = $F('picstartime');
			var picendtime = $F('picendtime');
			var picContent = $F('tscompanyContent');
        
		if(true){
        	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
 
       		if (picname.length<5 || picname.length>50){$('cpicname').innerHTML = '<font color=red>* 图片广告名字 必须在5到50个字符之间</font>';	
      		 return false;
      		 }else{ $('cpicname').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (classkey.length<2 || classkey.length>15){$('cclasskey').innerHTML = '<font color=red>* 后台关键字 必须在 2到15个字符之间</font>';	
      		 return false;
      		 }else{ $('cclasskey').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }

       		if (picurl.length<2 || picurl.length>50){$('cpicurl').innerHTML = '<font color=red>* 请输入正确的url 开头须以http://</font>';	
      		 return false;
      		 }else{ $('cpicurl').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }

       		if (author.length<2 || author.length>50){$('cauthor').innerHTML = '<font color=red>* 请输入编辑者</font>';	
      		 return false;
      		 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }

       		if (picOrder.length<1 || isNaN(picOrder)){$('cpicOrder').innerHTML = '<font color=red>* 输入正确的排序ID 越小越靠前</font>';	
      		 return false;
      		 }else{ $('cpicOrder').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }

       		if (picImg.length<2){$('cpicImg').innerHTML = '<font color=red>* 请上传图片</font>';	
      		 return false;
      		 }else{ $('cpicImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }

       		if (picstartime.length<2){$('cpicstartime').innerHTML = '<font color=red>* 请选择开始时间</font>';	
      		 return false;
      		 }else{ $('cpicstartime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (picendtime.length<2){$('cpicendtime').innerHTML = '<font color=red>* 请选择结束时间 长期有效 时间设置更长</font>';	
      		 return false;
      		 }else{ $('cpicendtime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }

       		if (picContent.length<1){$('cpicContent').innerHTML = '<font color=red>* 请输入信息内容</font>';	
      		 return false;
      		 }else{ $('cpicContent').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
 		}
     
    }
    function caddmessFun(checkOpt){
	        var seoKeyword = $F('seoKeyword');
			var seoDescription = $F('seoDescription');
			var picname = $F('picname');
			var classkey = $F('classkey');
			var picurl = $F('picurl');
			var author = $F('author');
			var picOrder = $F('picOrder');
			var picImg = $F('picImg');
			var picstartime = $F('picstartime');
			var picendtime = $F('picendtime');
			var picContent = $F('tscompanyContent');
	        
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
			case "picname":
        		if (picname.length<5 || picname.length>50){$('cpicname').innerHTML = '<font color=red>* 图片广告名字 必须在5到50个字符之间</font>';	
      		 return false;
      		 }else{ $('cpicname').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "classkey":
       		if (classkey.length<2 || classkey.length>15){$('cclasskey').innerHTML = '<font color=red>* 后台关键字 必须在 2到15个字符之间</font>';	
      		 return false;
      		 }else{ $('cclasskey').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picurl":
       		if (picurl.length<2 || picurl.length>50){$('cpicurl').innerHTML = '<font color=red>* 请输入正确的url 开头须以http://</font>';	
      		 return false;
      		 }else{ $('cpicurl').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "author":
       		if (author.length<2 || author.length>50){$('cauthor').innerHTML = '<font color=red>* 请输入编辑者</font>';	
      		 return false;
      		 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picOrder":
       		if (picOrder.length<1 || isNaN(picOrder)){$('cpicOrder').innerHTML = '<font color=red>* 输入正确的排序ID 越小越靠前</font>';	
      		 return false;
      		 }else{ $('cpicOrder').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picImg":
       		if (picImg.length<2){$('cpicImg').innerHTML = '<font color=red>* 请上传图片</font>';	
      		 return false;
      		 }else{ $('cpicImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picstartime":
         		if (picstartime.length<2){$('cpicstartime').innerHTML = '<font color=red>* 请选择开始时间</font>';	
      		 return false;
      		 }else{ $('cpicstartime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picendtime":
        		if (picendtime.length<2){$('cpicendtime').innerHTML = '<font color=red>* 请选择结束时间 长期有效 时间设置更长</font>';	
      		 return false;
      		 }else{ $('cpicendtime').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picContent":
       		if (picContent.length<1){$('cpicContent').innerHTML = '<font color=red>* 请输入信息内容</font>';	
      		 return false;
      		 }else{ $('cpicContent').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
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
    <li><a href="#">广告图片添加</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <form id="myform" method="post" name="form1" action="/mastLo/website_paddfun.html" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>关键字</label><textarea id="seoKeyword" onblur="caddmessFun('seoKeyword');" name="adpic.seoKeyword" cols="" rows="" class="textinput"></textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>描述</label><textarea id="seoDescription" onblur="caddmessFun('seoDescription');" name="adpic.seoDescription" cols="" rows="" class="textinput"></textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>	   
	    <li><label>广告标题</label><input id="picname" onblur="caddmessFun('picname');" name="adpic.picname" type="text" class="dfinput" value="" /><i id="cpicname">* 信息标题 ，必须在5到50个字符之间</i></li>
	    <li><label>后台关键字</label><input id="classkey" onblur="caddmessFun('classkey');" name="adpic.classkey" type="text" class="dfinput" value="" /><i id="cclasskey">* 请输入后台关键字eg: banner(首页-圆)、tvpic(首页-视频图) </i></li>
	    <li><label>广告链接</label><input id="picurl" onblur="caddmessFun('picurl');" name="adpic.picurl" type="text" class="dfinput" value="http://" /><i id="cpicurl">* 请输入广告链接地址</i></li>
	    <li><label>编辑者</label><input id="author" onblur="caddmessFun('author');" name="adpic.author" type="text" class="dfinput" value="" /><i id="cauthor">* 请输入编辑者</i></li>
	    <li><label>排序[升序]</label><input id="picOrder" onblur="caddmessFun('picOrder');" name="adpic.picOrder" type="text" class="dfinput" value="" /><i id="cpicOrder">* 请输入排序ID 越小越靠前</i></li>
	    <li><label>图片地址</label><input id="picImg" onblur="caddmessFun('picImg');" name="adpic.picImg" readonly type="text" class="dfinput" value="" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('picImg','pic','ad');" /><i id="cpicImg">* 请上传图片</i></li>
	    <li><label>显示时间</label><input id="picstartime" onblur="caddmessFun('picstartime');" class="Wdate" onclick="WdatePicker()" readonly name="adpic.picstartime" type="text" class="dfinput" value="<s:date name="adpic.picstartime" format="yyyy-MM-dd"/>" /><i id="cpicstartime">* 请选择广告开始时间</i></li>
	    <li><label>结束时间</label><input id="picendtime" onblur="caddmessFun('picendtime');"  class="Wdate" onclick="WdatePicker()" readonly name="adpic.picendtime" type="text" class="dfinput" value="<s:date name="adpic.picendtime" format="yyyy-MM-dd"/>" /><i id="cpicendtime">* 请选择广告结束时间</i></li>
	    <li><label>推荐</label>
	     <select name="adpic.isRecommend">
	    	<option selected value='1'>&nbsp;&nbsp;推荐&nbsp;&nbsp;</option>
	    	<option value='0'>&nbsp;&nbsp;否&nbsp;</option>
	    </select>
	   <i id="cisRecommend">* 默认推荐</i></li>
	    <li><label>状态</label>
	    <select name="adpic.picState">
	    	<option selected value='1'>&nbsp;&nbsp;正常&nbsp;&nbsp;</option>
	    	<option value='0'>&nbsp;&nbsp;关闭&nbsp;</option>
	    </select>
	    <i id="cpicState">* 默认正常</i></li>
	    
	    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>	   
	    <textarea name="adpic.picContent" id="tscompanyContent" rows="8" style="display:none"></textarea>
		           <iframe id="FCKeditor1___Frame" src="/Editor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="cpicContent">&nbsp;&nbsp;* 资料内容 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    
    </div>


</body>

</html>
