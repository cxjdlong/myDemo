<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script type="text/JavaScript" src="/resources/js/fckupload.js"></script>
<script type="text/javascript" src="/resources/js/jsfun.js"></script>
<script type="text/javascript">
        function addmessFun()   {
  
	        var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');
	        var proCaption = $F('proCaption');
	        var productName = $F('productName');
	        var proImg = $F('proImg');
	        var author = $F('author');
	        var looknum = $F('looknum');
	        var proContent = $F('tscompanyContent');

		if(true){
        	if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
        	if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*SEO描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	
        	if (proCaption.length<2 || proCaption.length>500){$('cproCaption').innerHTML = '<font color=red>*产品描述  输入不符合规范,必须在2到500个字符之间</font>';
        	  return false;
        	 }else{ $('cproCaption').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }

        	if (productName.length<2 || productName.length>20){$('cproductName').innerHTML = '<font color=red>* 信息标题  输入不符合规范,必须在2到20个字符之间</font>';
        	  return false;
        	 }else{ $('cproductName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
       	
			if (proImg.length<1){$('cproImg').innerHTML = '<font color=red>* 请上传信息图片</font>';
        	  return false;
        	 }else{ $('cproImg').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        	if (author.length<2 || author.length>5){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	
        	if (isNaN(looknum) || looknum.length<1){$('looknum').innerHTML = '<font color=red>* 请出入正确的点击次数</font>';
        	  return false;
        	 }else{ $('clooknum').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
 		   
 		    if (proContent.length<2){$('cproContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cproContent').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }

		}
     
    }
    function caddmessFun(checkOpt){
	        var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');
	        var proCaption = $F('proCaption');
	        var productName = $F('productName');
	        var proImg = $F('proImg');
	        var author = $F('author');
	        var looknum = $F('looknum');
	        var proContent = $F('tscompanyContent');
	        	   
        switch(checkOpt){
        	case "seoKeyword":
         		if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>*关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }     	
        		break;
        		
        	case "seoDescription":
        		if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>*SEO描述  输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "proCaption":	
        		if (proCaption.length<2 || proCaption.length>500){$('cproCaption').innerHTML = '<font color=red>*产品描述  输入不符合规范,必须在2到500个字符之间</font>';
        	  return false;
        	 }else{ $('cproCaption').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "productName":
        		if (productName.length<2 || productName.length>20){$('cproductName').innerHTML = '<font color=red>* 信息标题  输入不符合规范,必须在2到20个字符之间</font>';
        	  return false;
        	 }else{ $('cproductName').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "proImg":
        		if (proImg.length<1){$('cproImg').innerHTML = '<font color=red>* 请上传信息图片</font>';
        	  return false;
        	 }else{ $('cproImg').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "author":
        		if (author.length<2 || author.length>5){$('cauthor').innerHTML = '<font color=red>* 请填写编辑者,必须在2到6个字符之间</font>';
        	  return false;
        	 }else{ $('cauthor').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;

        	case "looknum":
        		if (isNaN(looknum) || looknum.length<1){$('clooknum').innerHTML = '<font color=red>* 请出入正确的点击次数</font>';
        	  return false;
        	 }else{ $('clooknum').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        		break;    
        		 		
        	case "proContent":
 		    if (proContent.length<2){$('cproContent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('cproContent').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;

        }
	
	}
	$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 100			  
	});
	
});
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
   <sf:form id="myform" method="post" action="/masteLo/pros/update.html" modelAttribute="pros" onsubmit="return addmessFun();" enctype="multipart/form-data">
    <ul class="forminfo">
	    <li><label>关键字</label><input type="hidden" name="id" value='${pro.id }'/><textarea id="seoKeyword" onblur="caddmessFun('seoKeyword');" name="seoKeyword" cols="" rows="" class="textinput">${pro.seoKeyword }</textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
	    <li><label>seo描述</label><textarea id="seoDescription" onblur="caddmessFun('seoDescription');" name="seoDescription" cols="" rows="" class="textinput">${pro.seoDescription }</textarea><i id="cseoDescription">SEO描述必须在5到500个字符之间</i></li>
	    <li><label>产品描述</label><textarea id="proCaption" onblur="caddmessFun('proCaption');" name="proCaption" cols="" rows="" class="textinput">${pro.proCaption }</textarea><i id="cproCaption">产品描述必须在5到500个字符之间</i></li>	   
	    <li><label>标题</label><input id="productName" onblur="caddmessFun('productName');" name="productName" type="text" class="dfinput" value="${pro.productName }" /><i id="cproductName">* 信息标题 ，必须在2到20个字符之间</i></li>
		
		
	    <li><label>信息分类</label>
		<select name="proClassId">
			<c:forEach items="${pager.dates}" var="protype" varStatus="stuts">   
	        <option <c:if test="${protype.id == pro.proClassId }">selected</c:if> value='${protype.id }'>&nbsp;&nbsp; ${ protype.className}&nbsp;&nbsp;</option>
	    	</c:forEach>   
		</select>
		</li>
	    <li><label>产品图片</label><input id="proImg" onblur="caddmessFun('proImg');" name="proImg" readonly type="text" class="dfinput" value="${pro.proImg }" /><input type="button" value=" 图片添加 " name="fckpic1" class="btnpic" onclick="openUpladage('proImg','pic','cp');" /><i id="cproImg">* 请上传产品图片</i></li>
	    <li><label>发布者</label><input id="author" onblur="caddmessFun('author');" name="author" type="text" class="dfinput" value="${pro.author }" /><i id="cauthor">* 请填写编辑者,必须在2到5个字符之间</i></li>
	    <li><label>点击次数</label><input id="looknum" onblur="caddmessFun('looknum');" name="looknum" type="text" class="dfinput" value="${pro.looknum }" /><i id="clooknum">* 请输入点击次数 默认1</i></li>
	    <li><label>是否推荐</label>
	    <select name="isRecommend">
	    	<option <c:if test="1==pro.isRecommend">selected</c:if> value='1'>&nbsp;&nbsp;推荐&nbsp;&nbsp;</option>
	    	<option <c:if test="0==pro.isRecommend">selected</c:if> value='0'>&nbsp;&nbsp;否&nbsp;</option>
	    </select><i id="cisrecommend">* 默认不推荐</i></li>
	    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>
	   
	    <textarea name="proContent" id="tscompanyContent" rows="8" style="display:none">${pro.proContent }</textarea>
		           <iframe id="FCKeditor1___Frame" src="/resources/ceditor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="cproContent">&nbsp;&nbsp;* 资料内容 </font></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
