
function SelectAll(checkboxName) { 
	var checkboxs=document.getElementsByName(checkboxName); 
	for (var i=0;i<checkboxs.length;i++) {  
		var e=checkboxs[i];  e.checked=!e.checked;
	}
}

function edtfun(checkboxName){
	var str=document.getElementsByName(checkboxName);
	var objarray=str.length;
	var selectValue = "";
	var chestr=0;
	for (i=0;i<objarray;i++){
	  if(str[i].checked == true) {
	   chestr++;
	   selectValue=str[i].value;
	  }
	}
	if(chestr != 1){
	  alert("请选择 一条数据");
	  return;
	}else {
	  window.location.href = "/masteLo/link/"+selectValue+".html";
	}
}

function addfun(){
	 window.location.href = "/masteLo/link/toAdd.html";
}

//************************   删除信息   *********************************//
function delfun(id,checkboxName){
	var str=document.getElementsByName(checkboxName);
	var objarray=str.length;
	var delKey = "";
	var chestr="";
	for (i=0;i<objarray;i++){
	  if(str[i].checked == true) {
	   chestr+=str[i].value+",";
	  }
	}
	if(chestr == ""){
	  alert("删除错误 ： 至少选择一条需要被删除的数据！");
	}else if(window.confirm('删除后不能恢复 您确定执行删除操作么？')){
		delKey = chestr.substring(0, chestr.length-1) ;
//	  alert("您先择的是："+ delKey +"");
	  window.location.href = "/masteLo/link/del.html?id="+delKey+"&sortID="+id;
	}
}