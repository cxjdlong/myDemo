<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/JavaScript" src="/resources/js/fckupload.js"></Script>
<script type="text/javascript" src="/resources/js/jsfun.js"></script>
<script type="text/javascript">
        function addmessFun()   {
  
	        var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');
	        var newsTitle = $F('newsTitle');
	        var newsImg = $F('newsImg');
	        var author = $F('author');
	        var looknum = $F('looknum');
	        var newsContent = $F('tscompanyContent');
        
		if(true){
        	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }

        	if (newsTitle.length<5 || newsTitle.length>60){$('cnewsTitle').innerHTML = '<font color=red>* 信息标题  输入不符合规范,必须在5到60个字符之间</font>';
        	  return false;
        	 }else{ $('cnewsTitle').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        	
			if (newsImg.length<1){$('cnewsImg').innerHTML = '<font color=red>* 请上传信息图片</font>';
        	  return false;
        	 }else{ $('cnewsImg').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (author.length<2 || author.length>5){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        	
        	if (isNaN(looknum) || looknum.length<1){$('clooknum').innerHTML = '<font color=red>* 请出入正确的点击次数</font>';
        	  return false;
        	 }else{ $('clooknum').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
 		   
 		    if (newsContent.length<1){$('cnewsContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cnewsContent').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }

		}
     
    }
    function caddmessFun(checkOpt){
	        var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');
	        var newsTitle = $F('newsTitle');
	        var newsImg = $F('newsImg');
	        var author = $F('author');
	        var looknum = $F('looknum');
	        var newsContent = $F('tscompanyContent');
	        	        
        switch(checkOpt){
        	case "seoKeyword":
         		if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
        	case "seoDescription":
        		if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;
        		
        	case "newsTitle":
        		if (newsTitle.length<5 || newsTitle.length>60){$('cnewsTitle').innerHTML = '<font color=red>* 信息标题  输入不符合规范,必须在5到60个字符之间</font>';
        	  return false;
        	 }else{ $('cnewsTitle').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "newsImg":
        		if (newsImg.length<1){$('cnewsImg').innerHTML = '<font color=red>* 请上传信息图片</font>';
        	  return false;
        	 }else{ $('cnewsImg').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "author":
        		if (author.length<2 || author.length>5){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "looknum":
        		if (isNaN(looknum) || looknum.length<1){$('clooknum').innerHTML = '<font color=red>* 请出入正确的点击次数</font>';
        	  return false;
        	 }else{ $('clooknum').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;    
        		 		
        	case "newsContent":
 		    if (newsContent.length<1){$('cnewsContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cnewsContent').innerHTML = "&nbsp;&nbsp;<img /src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
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
    <li><a href="#">信息添加页</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <sf:form id="myform" method="post" action="/masteLo/news/add.html" modelAttribute="news" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>关键字</label><textarea id="seoKeyword" onblur="caddmessFun('seoKeyword');" name="seoKeyword" cols="" rows="" class="textinput"></textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>描述</label><textarea id="seoDescription" onblur="caddmessFun('seoDescription');" name="seoDescription" cols="" rows="" class="textinput"></textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>	   
	    <li><label>标题</label><input id="newsTitle" onblur="caddmessFun('newsTitle');" name="newsTitle" type="text" class="dfinput" value="" /><i id="cnewsTitle">* 信息标题 ，必须在5到60个字符之间</i></li>
		
	    <li><label>信息分类</label>
	    <select name="className">
	     <s:iterator value="class_list" id="b" status="stuts">     
			  <option  <s:if test="#b.id==cnews.classID">selected</s:if> value='<s:property value="#b.id" />-<s:property value="#b.className" />'>&nbsp;&nbsp;<s:property value="#b.className" />&nbsp;&nbsp;</option>			
	    </s:iterator>
		</select>
		</li>
	    <li><label>新闻图片</label><input id="newsImg" onblur="caddmessFun('newsImg');" readonly name="newsImg" type="text" class="dfinput" value="1111111" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('newsImg','pic','n');" /><i id="cnewsImg">* 请上传新闻图片</i></li>
	    <li><label>发布者</label><input id="author" onblur="caddmessFun('author');" name="author" type="text" class="dfinput" value="" /><i id="cauthor">* 请填写编辑者,必须在2到5个字符之间</i></li>
	    <li><label>点击次数</label><input id="looknum" onblur="caddmessFun('looknum');" name="looknum" type="text" class="dfinput" value="1" /><i id="clooknum">* 请输入点击次数 默认1</i></li>
	    <li><label>是否推荐</label>
	    <select name="isrecommend">
	    	<option value='1'>&nbsp;&nbsp;推荐&nbsp;&nbsp;</option>
	    	<option selected value='0'>&nbsp;&nbsp;否&nbsp;</option>
	    </select>
	    </li>
	    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>
	   
	    <textarea name="newsContent" id="tscompanyContent" rows="8" style="display:none"></textarea>
		           <iframe id="FCKeditor1___Frame" src="/resources/ceditor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="cnewsContent">&nbsp;&nbsp;* 资料内容 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
