 //用户名框失去焦点是调用的函数
//http://blog.sina.com.cn/s/blog_70e2737301018fyb.html 参考
  function chkUser() {
	 
	var us = $("userid").value;
	
	if(us.length<5 || us.length>16){
		 $("cuserid").innerHTML='<font color=red>用户ID  输入不符合规范,必须在 5到16个字符之间</font>'; 
		 return false;
	}else{
		 alert("----"+us);
    //请求的地址
    var url = '/masteLo/master/chekcUserid.html?jj';
    //将表单域的值转换为请求参数
    var params = Form.Element.serialize('userid');
    //创建Ajax.Request对象，对应于发送请求
    new Ajax.Request(
    url,
    {
    //请求方式：POST
    method:'post',
    //请求参数
    parameters:params,
    //指定回调函数
    onComplete:function(json){  
        var JSONobj=json.responseText;             
        $("cuserid").innerHTML=JSONobj;  
    }  

    });
   }
  }
