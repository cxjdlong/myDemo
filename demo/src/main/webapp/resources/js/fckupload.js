
function addUploadItem(type,path,controlName){
   var EditType="";
   var oEditor = window.opener.parent.rightFrame.FCKeditorAPI.GetInstance(controlName);
   EditType="FCkEditor";
  type=type.toLowerCase();
  oEditor.InsertHtml('<img src="'+path+'" alt=""/>')
   
}
//【对齐文本】
//参数：文本控件对象,模式：0代表普通文本输入框,1代表FCKeditor文本输入框
function ContentAlign(objcontrolName,mode)
{
 var objcontrol;
 //0\检验变量 
 if(mode==null||isNaN(mode)){mode=0;}
 var objcontrolString;
 //1\检查对象是否存在
 if(mode==0)
 {
  objcontrol=document.getElementById(objcontrolName);
 }
 else
 {
  objcontrol=FCKeditorAPI.GetInstance(objcontrolName); 
 }
 
 if(objcontrol!=null)
 {
  //2\如果是普通文本输入框
  if(mode==0) 
  {
   //1>检查字符串是否为空和长度是否为0
   objcontrolString=objcontrol.value;
   if(objcontrolString!=null&&objcontrolString.length>0)
   {
    objcontrol.value=StringTrim(objcontrolString);
    objcontrol.value=StringTrim(objcontrol.value);
   }
  }
  //3\如果是FCKeditor文本输入框
  else
  {
   var objcontrolStringLen;
   var oDOM = objcontrol.EditorDocument ;
   objcontrolString=oDOM.body.innerText;
   if ( document.all )  // If Internet Explorer.
   {
    objcontrolStringLen = objcontrolString.length ;
   }
   else     // If Gecko.
   {
    var r = oDOM.createRange() ;
    r.selectNodeContents( oDOM.body ) ;
    objcontrolStringLen = r.toString().length ;
   }   
   
   if(objcontrolStringLen>0)
   {
    oDOM.body.innerText=StringTrim(oDOM.body.innerText);
    oDOM.body.innerText=StringTrim(oDOM.body.innerText);
   }   
  }
 }
}
 
//【过滤字符串开头和尾巴的空格】
function StringTrim(string)
{
  var FieldValue=string;
  var Blank=String.fromCharCode(32)+String.fromCharCode(32);
  //var Blank="aabb";
  var myArray=new Array;
  var ContentArray=FieldValue.split("\n");
  var TempString="";
  var Block="";
  //循环去掉空字符串
  for(iRow=0;iRow<ContentArray.length;iRow++)
  {Block=ContentArray[iRow].replace(/^\s*|\s*$/g,'');
   Block=Block.replace("　",'');
   //把空的段落内容去掉
   if(Block!="")
     {myArray.push(Blank+Block);}
   }
  //把字符串整理出来
  for(iRow=0;iRow<myArray.length;iRow++)
  {TempString+=myArray[iRow]+"\n\n";} 
  return TempString;
}
