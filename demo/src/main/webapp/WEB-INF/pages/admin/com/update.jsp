<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="/resources/mfolder/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/js/jsfun.js"></script>
<script type="text/javascript" src="/resources/js/prototype.js"></script>
<script language="javascript" type="text/javascript" src="/resources/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
        function eduSite()   {	        
        	var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');      
	        var content = $F('tscompanyContent');
        
      		if (seoKeyword.length<5 || seoKeyword.length>500){$('cseoKeyword').innerHTML = '<font color=red>关键字 输入不符合规范,必须在 5到500个字符之间</font>';	
      		 return false;
      		 }else{ $('cseoKeyword').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif' />";  			  }
      		 
  			if (seoDescription.length<5 || seoDescription.length>500){$('cseoDescription').innerHTML = '<font color=red>描述 输入不符合规范,必须在5到500个字符之间</font>';
        	  return false;
        	 }else{ $('cseoDescription').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }

		    if (content.length<0){$('ccontent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('ccontent').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
		    }
    function ceduSite(checkOpt){	    
        	var seoKeyword = $F('seoKeyword');
	        var seoDescription = $F('seoDescription');      
	        var content = $F('tscompanyContent');
		        
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
        		
        	case "content":
 		    if (content.length<0){$('ccontent').innerHTML = '<font color=red>内容输入不符合规范,不能为空</font>';
        	  return false;
        	 }else{ $('ccontent').innerHTML = "&nbsp;&nbsp;<img src='/resources/mfolder/images/reg4.gif'/>"; }
        	 
        		break;
        }
	}
	  //***************************弹出上传页面*********************************//    
    function openUploadage(name,fun,fileName){
		var url = "/create/uploadPage.do?name="+ name+"&fun="+fun+"&fileName="+fileName;
		var uploadurl = window.open(url,'newwindow','width=400,height=10,top=380,left=500,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');
    } 
</script>
${showManage }
</head>

<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/menu/right.html">首页</a></li>
    <li><a href="#">公司信息</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
   <sf:form id="myform" method="post" action="/masteLo/company/update.html" modelAttribute="company" enctype="multipart/form-data">
	   <ul class="forminfo">	    
		    <li><label>关键字</label><input type="hidden" name="keyid" value='${company.keyid}'/><textarea id="seoKeyword" onblur="ceduSite('seoKeyword');" name="seoKeyword" cols="" rows="" class="textinput">${company.seoKeyword }</textarea><i id="cseoKeyword">* 关键字 必须在 5到500个字符之间</i></li>
		    <li><label>描述</label><textarea id="seoDescription" onblur="ceduSite('seoDescription');" name="seoDescription" cols="" rows="" class="textinput">${company.seoDescription }</textarea><i id="cseoDescription">描述必须在5到500个字符之间</i></li>	   
		    <li><label>标题</label><input id="title" onblur="ceduSite('title');" name="title" readonly type="text" class="dfinput" value="${company.title }" /><i id="ctitle"></i></li>
		    <li><label>添加时间</label><input id="addtimes" class="Wdate" name="addtimes" readonly type="text" class="dfinput" onclick="WdatePicker()" value='${company.addtimes }' /><i id="caddtimes">* 仅网站发布初期修改</i></li>	    	   
		    <li><label>修改时间</label><input id="updateTimes" onblur="ceduSite('updateTimes');" readonly name="updateTimes" type="text" class="dfinput" value="${company.updateTimes }" /><i id="cupdateTimes"></i></li>
		    <li><label>信息内容</label><p><input type="button" value=" 编辑器图片添加" name="fckpic1" class="btnpic2" onclick="openUpladage('tscompanyContent','','');" /></p>
		   
		    <textarea name="content" id="tscompanyContent" rows="8" style="display:none">${company.content }</textarea>
			           <iframe id="FCKeditor1___Frame" src="/resources/ceditor/editor/fckeditor.htm?InstanceName=tscompanyContent&amp;Toolbar=Default" width="100%" height="350" frameborder="0" scrolling="no"></iframe><font style="color:#7f7f7f;" id="ccontent">&nbsp;&nbsp;* 资料内容 </font></li>
		    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	    </ul>
    </sf:form>
    
    
    </div>


</body>

</html>
