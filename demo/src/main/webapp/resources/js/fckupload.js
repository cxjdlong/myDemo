
function addUploadItem(type,path,controlName){
   var EditType="";
   var oEditor = window.opener.parent.rightFrame.FCKeditorAPI.GetInstance(controlName);
   EditType="FCkEditor";
  type=type.toLowerCase();
   switch(type){
    case 'gif':
        oEditor.InsertHtml('<img src="'+path+'" alt=""/>')
     break;
    case 'jpg':
       oEditor.InsertHtml('<img src="'+path+'" alt=""/>')
     break;
    case 'png':
        oEditor.InsertHtml('<img src="'+path+'" alt=""/>')
     break;
    case 'bmp':
        oEditor.InsertHtml('<img src="'+path+'" alt=""/>')
     break;
    case 'jpeg':
        oEditor.InsertHtml('<img src="'+path+'" alt=""/>')
     break;
    case 'mp3':
        oEditor.InsertHtml('<object classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95"  id="MediaPlayer" width="450" height="70"><param name=""howStatusBar" value="-1"><param name="AutoStart" value="False"><param name="Filename" value="'+path+'"></object>')
     break;
    case 'wma':
        oEditor.InsertHtml('<object classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95"  id="MediaPlayer" width="450" height="70"><param name=""howStatusBar" value="-1"><param name="AutoStart" value="False"><param name="Filename" value="'+path+'"></object>')
     break;
    case 'rm':
       oEditor.InsertHtml('<object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="400" height="300"><param name="SRC" value="'+path+'" /><param name="CONTROLS" VALUE="ImageWindow" /><param name="CONSOLE" value="one" /><param name="AUTOSTART" value="true" /><embed src="'+path+'" nojava="true" controls="ImageWindow" console="one" width="400" height="300"></object><br/><object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="400" height="32" /><param name="CONTROLS" value="StatusBar" /><param name="AUTOSTART" value="true" /><param name="CONSOLE" value="one" /><embed src="'+path+'" nojava="true" controls="StatusBar" console="one" width="400" height="24" /></object><br/><object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="400" height="32" /><param name="CONTROLS" value="ControlPanel" /><param name="AUTOSTART" value="true" /><param name="CONSOLE" value="one" /><embed src="'+path+'" nojava="true" controls="ControlPanel" console="one" width="400" height="24" autostart="true" loop="false" /></object>')
     break;
    case 'rmvb':
       oEditor.InsertHtml('<object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="400" height="300"><param name="SRC" value="'+path+'" /><param name="CONTROLS" VALUE="ImageWindow" /><param name="CONSOLE" value="one" /><param name="AUTOSTART" value="true" /><embed src="'+path+'" nojava="true" controls="ImageWindow" console="one" width="400" height="300"></object><br/><object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="400" height="32" /><param name="CONTROLS" value="StatusBar" /><param name="AUTOSTART" value="true" /><param name="CONSOLE" value="one" /><embed src="'+path+'" nojava="true" controls="StatusBar" console="one" width="400" height="24" /></object><br/><object classid="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA" width="400" height="32" /><param name="CONTROLS" value="ControlPanel" /><param name="AUTOSTART" value="true" /><param name="CONSOLE" value="one" /><embed src="'+path+'" nojava="true" controls="ControlPanel" console="one" width="400" height="24" autostart="true" loop="false" /></object>')
     break;
    case 'ra':
        oEditor.InsertHtml('<object classid="clsid:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA" id="RAOCX" width="450" height="60"><param name="_ExtentX" value="6694"><param name="_ExtentY" value="1588"><param name="AUTOSTART" value="true"><param name="SHUFFLE" value="0"><param name="PREFETCH" value="0"><param name="NOLABELS" value="0"><param name="SRC" value="'+path+'"><param name="CONTROLS" value="StatusBar,ControlPanel"><param name="LOOP" value="0"><param name="NUMLOOP" value="0"><param name="CENTER" value="0"><param name="MAINTAINASPECT" value="0"><param name="BACKGROUNDCOLOR" value="#000000"><embed src="'+path+'" width="450" autostart="true" height="60"></embed></object>')
     break;
    case 'asf':
        oEditor.InsertHtml('<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,0,02,902" type="application/x-oleobject" standby="Loading..." width="400" height="300"><param name="FileName" VALUE="'+path+'" /><param name="ShowStatusBar" value="-1" /><param name="AutoStart" value="true" /><embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" src="'+path+'" autostart="true" width="400" height="300" /></object>')
     break;
    case 'avi':
       oEditor.InsertHtml('<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,0,02,902" type="application/x-oleobject" standby="Loading..." width="400" height="300"><param name="FileName" VALUE="'+path+'" /><param name="ShowStatusBar" value="-1" /><param name="AutoStart" value="true" /><embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" src="'+path+'" autostart="true" width="400" height="300" /></object>')
     break;
    case 'wmv':
        oEditor.InsertHtml('<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=6,0,02,902" type="application/x-oleobject" standby="Loading..." width="400" height="300"><param name="FileName" VALUE="'+path+'" /><param name="ShowStatusBar" value="-1" /><param name="AutoStart" value="true" /><embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" src="'+path+'" autostart="true" width="400" height="300" /></object>')
     break;
    case 'swf':
        oEditor.InsertHtml('<object codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="400" height="300"><param name="movie" value="'+path+'" /><param name="quality" value="high" /><param name="AllowScriptAccess" value="never" /><embed src="'+path+'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="400" height="300" /></object>')
     break;
    default :
        oEditor.InsertHtml('<a href="'+path+'"><img border="0" src="/images/download.gif" alt="" style="margin:0px 2px -4px 0px"/>点击下载此文件</a>')
        break;
     }
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
