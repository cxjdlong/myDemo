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
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
      		 
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

        	if (newsTitle.length<5 || newsTitle.length>60){$('cnewsTitle').innerHTML = '<font color=red>* 信息标题  输入不符合规范,必须在5到60个字符之间</font>';
        	  return false;
        	 }else{ $('cnewsTitle').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
			if (newsImg.length<1){$('cnewsImg').innerHTML = '<font color=red>* 请上传信息图片</font>';
        	  return false;
        	 }else{ $('cnewsImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	 
        	if (author.length<2 || author.length>5){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	
        	if (isNaN(looknum) || looknum.length<1){$('clooknum').innerHTML = '<font color=red>* 请出入正确的点击次数</font>';
        	  return false;
        	 }else{ $('clooknum').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
 		   
 		    if (newsContent.length<2){$('cnewsContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cnewsContent').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }

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
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif' />";  			  }
        	
        		break;
        	case "seoDescription":
        		if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;
        		
        	case "newsTitle":
        		if (newsTitle.length<5 || newsTitle.length>60){$('cnewsTitle').innerHTML = '<font color=red>* 信息标题  输入不符合规范,必须在5到60个字符之间</font>';
        	  return false;
        	 }else{ $('cnewsTitle').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "newsImg":
        		if (newsImg.length<1){$('cnewsImg').innerHTML = '<font color=red>* 请上传信息图片</font>';
        	  return false;
        	 }else{ $('cnewsImg').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "author":
        		if (author.length<2 || author.length>5){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "looknum":
        		if (isNaN(looknum) || looknum.length<1){$('clooknum').innerHTML = '<font color=red>* 请出入正确的点击次数</font>';
        	  return false;
        	 }else{ $('clooknum').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        		break;    
        		 		
        	case "newsContent":
 		    if (newsContent.length<2){$('cnewsContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cnewsContent').innerHTML = "&nbsp;&nbsp;<img src='/mfolder/images/reg4.gif'/>"; }
        	 
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
   <form id="myform" name="form1" method="post" action="/mastLo/anews_edtfun.html" onsubmit="return addmessFun();">
    <ul class="forminfo">
	    <li><label>关键字</label><input type="hidden" name="cnews.id" value='<s:property value ="cnews.id" />'/><textarea id="seoKeyword" onblur="caddmessFun('seoKeyword');" name="cnews.seoKeyword" cols="" rows="" class="textinput"><s:property value="cnews.seoKeyword" /></textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>描述</label><textarea id="seoDescription" onblur="caddmessFun('seoDescription');" name="cnews.seoDescription" cols="" rows="" class="textinput"><s:property value="cnews.seoDescription" /></textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>	   
	    <li><label>标题</label><input id="newsTitle" onblur="caddmessFun('newsTitle');" name="cnews.newsTitle" type="text" class="dfinput" value="<s:property value="cnews.newsTitle"/>" /><i id="cnewsTitle">* 信息标题 ，必须在5到60个字符之间</i></li>
		
		
	    <li><label>信息分类</label>
	    <select name="cnews.className">
	     <s:iterator value="class_list" id="b" status="stuts">     
			  <option  <s:if test="#b.id==cnews.classID">selected</s:if> value='<s:property value="#b.id" />-<s:property value="#b.className" />'>&nbsp;&nbsp;<s:property value="#b.className" />&nbsp;&nbsp;</option>			
	    </s:iterator>
		</select>
		</li>
	    <li><label>新闻图片</label><input id="newsImg" onblur="caddmessFun('newsImg');" readonly name="cnews.newsImg" type="text" class="dfinput" value="<s:property value ="cnews.newsImg" />" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('newsImg','pic','n');" /><i id="cnewsImg">* 请上传新闻图片</i></li>
	    <li><label>发布者</label><input id="author" onblur="caddmessFun('author');" name="cnews.author" type="text" class="dfinput" value="<s:property value ="cnews.author" />" /><i id="cauthor">* 请填写编辑者,必须在2到5个字符之间</i></li>
	    <li><label>点击次数</label><input id="looknum" onblur="caddmessFun('looknum');" name="cnews.looknum" type="text" class="dfinput" value="<s:property value ="cnews.looknum" />" /><i id="clooknum">* 请输入点击次数 默认1</i></li>
	    <li><label>是否推荐</label>
	    <select name="cnews.isrecommend">
	    	<option <s:if test="1==cnews.isrecommend">selected</s:if> value='1'>&nbsp;&nbsp;推荐&nbsp;&nbsp;</option>
	    	<option <s:if test="0==cnews.isrecommend">selected</s:if> value='0'>&nbsp;&nbsp;否&nbsp;</option>
	    </select><i id="cisrecommend">* 默认不推荐</i></li>
	    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>
	   
	    <textarea name="cnews.newsContent" id="tscompanyContent" rows="8" style="display:none"><s:property value ="cnews.newsContent" /></textarea>
		           <iframe id="FCKeditor1___Frame" src="/Editor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="cnewsContent">&nbsp;&nbsp;* 资料内容 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </form>
    
    
    </div>


</body>

</html>
