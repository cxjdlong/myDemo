  //***************************弹出上传页面*********************************//    
    function openUpladage(name,fun,fileName){
		var url = "/masteLo/uplad/upladPage.html?name="+ name+"&fun="+fun+"&fileName="+fileName;
		var uploadurl = window.open(url,'newwindow','width=400,height=10,top=380,left=500,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no, status=no,fullscreen=no');
    }     