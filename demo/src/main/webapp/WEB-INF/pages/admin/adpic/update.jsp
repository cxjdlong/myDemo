<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/javascript" src="/resources/js/jsfun.js"></script>
<script language="javascript" type="text/javascript" src="/resources/js/My97DatePicker/WdatePicker.js"></script>
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
			var tscompanyContent = $F('tscompanyContent');
        	
		if(true){
        	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
 
       		if (picname.length<5 || picname.length>50){$('cpicname').innerHTML = '<font color=red>* 图片广告名字 必须在5到50个字符之间</font>';	
      		 return false;
      		 }else{ $('cpicname').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (classkey.length<2 || classkey.length>15){$('cclasskey').innerHTML = '<font color=red>* 后台关键字 必须在 2到15个字符之间</font>';	
      		 return false;
      		 }else{ $('cclasskey').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }

       		if (picurl.length<2 || picurl.length>50){$('cpicurl').innerHTML = '<font color=red>* 请输入正确的url 开头须以http://</font>';	
      		 return false;
      		 }else{ $('cpicurl').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }

       		if (author.length<2 || author.length>50){$('cauthor').innerHTML = '<font color=red>* 请输入编辑者</font>';	
      		 return false;
      		 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }

       		if (picOrder.length<1 || isNaN(picOrder)){$('cpicOrder').innerHTML = '<font color=red>* 输入正确的排序ID 越小越靠前</font>';	
      		 return false;
      		 }else{ $('cpicOrder').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }

       		if (picImg.length<2){$('cpicImg').innerHTML = '<font color=red>* 请上传图片</font>';	
      		 return false;
      		 }else{ $('cpicImg').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }

       		if (picstartime.length<2){$('cpicstartime').innerHTML = '<font color=red>* 请选择开始时间</font>';	
      		 return false;
      		 }else{ $('cpicstartime').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
       		if (picendtime.length<2){$('cpicendtime').innerHTML = '<font color=red>* 请选择结束时间 长期有效 时间设置更长</font>';	
      		 return false;
      		 }else{ $('cpicendtime').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }

       		if (tscompanyContent.length<1){$('ctscompanyContent').innerHTML = '<font color=red>* 请输入信息内容</font>';	
      		 return false;
      		 }else{ $('ctscompanyContent').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
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
			var tscompanyContent = $F('tscompanyContent');
	        
        switch(checkOpt){
        	case "seoKeyword":
        	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "seoDescription":
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	
        		break;
			case "picname":
        		if (picname.length<5 || picname.length>50){$('cpicname').innerHTML = '<font color=red>* 图片广告名字 必须在5到50个字符之间</font>';	
      		 return false;
      		 }else{ $('cpicname').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "classkey":
       		if (classkey.length<2 || classkey.length>15){$('cclasskey').innerHTML = '<font color=red>* 后台关键字 必须在 2到15个字符之间</font>';	
      		 return false;
      		 }else{ $('cclasskey').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picurl":
       		if (picurl.length<2 || picurl.length>50){$('cpicurl').innerHTML = '<font color=red>* 请输入正确的url 开头须以http://</font>';	
      		 return false;
      		 }else{ $('cpicurl').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "author":
       		if (author.length<2 || author.length>50){$('cauthor').innerHTML = '<font color=red>* 请输入编辑者</font>';	
      		 return false;
      		 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picOrder":
       		if (picOrder.length<1 || isNaN(picOrder)){$('cpicOrder').innerHTML = '<font color=red>* 输入正确的排序ID 越小越靠前</font>';	
      		 return false;
      		 }else{ $('cpicOrder').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picImg":
       		if (picImg.length<2){$('cpicImg').innerHTML = '<font color=red>* 请上传图片</font>';	
      		 return false;
      		 }else{ $('cpicImg').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picstartime":
         		if (picstartime.length<2){$('cpicstartime').innerHTML = '<font color=red>* 请选择开始时间</font>';	
      		 return false;
      		 }else{ $('cpicstartime').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "picendtime":
        		if (picendtime.length<2){$('cpicendtime').innerHTML = '<font color=red>* 请选择结束时间 长期有效 时间设置更长</font>';	
      		 return false;
      		 }else{ $('cpicendtime').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
			case "tscompanyContent":
       		if (tscompanyContent.length<1){$('ctscompanyContent').innerHTML = '<font color=red>* 请输入信息内容</font>';	
      		 return false;
      		 }else{ $('ctscompanyContent').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
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
    <li><a href="#">广告图片修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <sf:form id="myform" method="post" action="/masteLo/adpic/add.html" modelAttribute="adpic" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>关键字</label><input type="hidden" name="id" value='${adpic.id }'/><textarea id="seoKeyword" onblur="caddmessFun('seoKeyword');" name="seoKeyword" cols="" rows="" class="textinput">${adpic.seoKeyword }</textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>描述</label><textarea id="seoDescription" onblur="caddmessFun('seoDescription');" name="seoDescription" cols="" rows="" class="textinput">${adpic.seoDescription }</textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>	   
	    <li><label>广告标题</label><input id="picname" onblur="caddmessFun('picname');" name="picname" type="text" class="dfinput" value="${adpic.picname }" /><i id="cpicname">* 信息标题 ，必须在5到50个字符之间</i></li>
	    <li><label>后台关键字</label><input id="classkey" onblur="caddmessFun('classkey');" name="classkey" type="text" class="dfinput" value="${adpic.classkey }" /><i id="cclasskey">* 请输入后台关键字eg: banner </i></li>
	    <li><label>广告链接</label><input id="picurl" onblur="caddmessFun('picurl');" name="picurl" type="text" class="dfinput" value="${adpic.picurl }" /><i id="cpicurl">* 请输入广告链接地址</i></li>
	    <li><label>编辑者</label><input id="author" onblur="caddmessFun('author');" name="author" type="text" class="dfinput" value="${adpic.author }" /><i id="cauthor">* 请输入编辑者</i></li>
	    <li><label>排序[升序]</label><input id="picOrder" onblur="caddmessFun('picOrder');" name="picOrder" type="text" class="dfinput" value="${adpic.picOrder }" /><i id="cpicOrder">* 请输入排序ID 越小越靠前</i></li>
	    <li><label>图片地址</label><input id="picImg" onblur="caddmessFun('picImg');" name="picImg" readonly type="text" class="dfinput" value="${adpic.picImg }" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('picImg','pic','ad');" /><i id="cpicImg">* 请上传图片</i></li>
	    <li><label>显示时间</label><input id="picstartime" onblur="caddmessFun('picstartime');" class="Wdate" onclick="WdatePicker()" readonly name="picstartime" type="text" class="dfinput" value='<fmt:formatDate pattern="yyyy-MM-dd" value="${adpic.picstartime }" />' /><i id="cpicstartime">* 请选择广告开始时间</i></li>
	    <li><label>结束时间</label><input id="picendtime" onblur="caddmessFun('picendtime');"  class="Wdate" onclick="WdatePicker()" readonly name="picendtime" type="text" class="dfinput" value='<fmt:formatDate pattern="yyyy-MM-dd" value="${adpic.picendtime }" />' /><i id="cpicendtime">* 请选择广告结束时间</i></li>
	    <li><label>推荐</label>
	    <select name="isRecommend">
	    	<option <c:if test="${adpic.isRecommend == 1 }">selected</c:if> value='1'>&nbsp;&nbsp;推荐&nbsp;&nbsp;</option>
	    	<option <c:if test="${adpic.isRecommend == 0 }">selected</c:if> value='0'>&nbsp;&nbsp;否&nbsp;</option>
	    </select>
	    <i id="cisRecommend">* 默认推荐</i></li>
	    <li><label>状态</label>
	    <select name="picState">
	    	<option <c:if test="${adpic.picState == 1 }" >selected</c:if> value='1'><font color="red">正常显示</font> </option>
	    	<option <c:if test="${adpic.picState == 0 }" >selected</c:if> value='0'><font color="red">关闭</font> </option>
	    </select>
	    <i id="cpicState">* 默认正常</i></li>
	    
	    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>	   
	    <textarea name="picContent" id="tscompanyContent" rows="8" style="display:none">${adpic.picContent}</textarea>
		           <iframe id="FCKeditor1___Frame" src="/resources/ceditor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="ctscompanyContent">&nbsp;&nbsp;* 资料内容 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
