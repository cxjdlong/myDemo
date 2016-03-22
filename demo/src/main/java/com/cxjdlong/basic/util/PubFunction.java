package com.cxjdlong.basic.util;


import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

public class PubFunction {

	/*
	 * 
	 * getStrend() 已 . 为分割符 截取当前的字符串 返回 . 后的值 String[] types =
	 * test.split("[.]");
	 * 
	 */
	public static String getStrend(String str,String key) {
		String[] strVale = str.split("["+key+"]");
		int Maxs = (strVale.length) - 1;

		str = strVale[Maxs];

		return str;
	}

	/*
	 * 
	 * getStrend() 按提供的KEY截取字符串，vNum 需要的维数 
	 * test.split("[.]");
	 * 
	 */
	
	public static String getStrend(String str,String key,int vNum) {
		String[] strVale = str.split("["+key+"]");
		str = strVale[vNum];
		return str;
	}
	/*
	 * 乱码编码转换
	 * 
	 */

	public static String getStr(String str) {
		try {
			String temp_p = str.trim();
			byte[] temp_t = temp_p.getBytes("ISO8859-1");
			String temp = new String(temp_t);
			return temp;
		} catch (Exception e) {
			return "NULL";
		}
	}

	/*
	 * 
	 * getNow() 取得以当前时间组成的字符串
	 * 
	 */
	public static String getNow() {
		return (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date());
	}
	/*
	 * 
	 * getNow() 取得以当前时间组成的字符串
	 * 
	 */
	public static String getNowTime() {
		return (new SimpleDateFormat("yy-MM-dd HH:mm")).format(new Date());
	}
	/**
	 * 删除文件
	 * 
	 * @param filePathAndName
	 *            String 文件路径及名称 如c:/fqf.txt
	 * @param fileContent
	 *            String
	 * @return boolean
	 */
	public static boolean delFile(String filePathAndName) {

		try {
			String filePath = filePathAndName;
			filePath = filePath.toString();
			java.io.File myDelFile = new java.io.File(filePath);
			if (myDelFile.isFile() && myDelFile.exists()) {

				myDelFile.delete();
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			System.out.println("删除文件操作出错");
			e.printStackTrace();
			return false;

		}

	}

	public static String getNowLongStr() {
		return (new SimpleDateFormat("yyyyMMddHHmmss")).format(new Date())
				+ random(16);
	}

	public static String random(int len) {
		long lng = new Random().nextLong();
		if (lng < 0) {
			lng = lng * (-1);
		}
		String lngStr = "" + lng;
		if (lngStr.length() < len) {
			lngStr += random(len - lngStr.length());
		} else {
			lngStr = lngStr.substring(0, len);
		}
		return lngStr;
	}

	public static String getContentSendDatetime(String typeStr, String dayStr,
			String timeStr) {
		Calendar c = Calendar.getInstance();
		DateFormat df = DateFormat.getDateTimeInstance();
		String ret = c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH) + 1)
				+ "-" + c.get(Calendar.DATE) + " " + timeStr;
		try {
			c.setTime(df.parse(ret));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		// every day
		if ("0".equals(typeStr)) {
			if (c.before(Calendar.getInstance())) {
				c.set(Calendar.DATE, c.get(Calendar.DATE) + 1);
			}
		}
		// every month
		if ("1".equals(typeStr) && !"".equals(dayStr)) {
			c.set(Calendar.DATE, Integer.parseInt(dayStr));
			if (c.before(Calendar.getInstance())) {
				c.set(Calendar.MONTH, c.get(Calendar.MONTH) + 1);
			}
		}
		// every week
		if ("2".equals(typeStr) && !"".equals(dayStr)) {
			int day = Integer.parseInt(dayStr);
			if (day == 7) {
				day = 1;
			}
			c.set(Calendar.DAY_OF_WEEK, day);
			if (c.before(Calendar.getInstance())) {
				c.set(Calendar.WEEK_OF_YEAR, c.get(Calendar.WEEK_OF_YEAR) + 1);
			}
		}
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//		return sdf.format(c.getTime());
		 return c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH) + 1) + "-"
				+ c.get(Calendar.DATE) + " " + timeStr;
	}
	/**
	 * 判断是否为数字
	 * 
	 * */
	public static boolean isNum(String str){
//		System.out.println("str="+str);
		if (str.length()<1 || str==null){
			return false;
		}  
		  for (int i = 0; i < str.length(); i++){
//		   System.out.println(str.charAt(i));
			
		   if (!Character.isDigit(str.charAt(i))){
		    return false;
		   }
		  }
		  return true;
		 }
	/**
	 * 过滤所有HTML
	 * */
	public static String noHtml(String strhtml){
		
		String nohtmlstr = strhtml.replaceAll("&lt;[A-z/ =']*&gt;", "");
		return nohtmlstr;
	}

	public static boolean checksql(String str){
	 
		String inj_str = "'|and|exec|insert|select|delete|update|count|*|%|chr|mid|master|truncate|char|declare|;|or|-|+|,";	 
		//这里的东西还可以自己添加 
		String[] inj_stra=inj_str.split("\\|"); 
		for (int i=0 ; i<inj_stra.length;i++ ){	 
			if (str.indexOf(inj_stra[i])>=0){
				return true;
			}	 
		} 
		return false; 
	}
	/*
	 * 正则表达式 匹配串 取值
	 * 
	 * 
	 * */			
	public static String getZhengzestr(String firststr){
		//	<(.*?)>
		Pattern p = Pattern.compile("<(.*?)>");
		Matcher m = p.matcher(firststr);
		String strval = "" ;
		while(m.find()){
		  for(int i=0;i<m.groupCount();i++){
			  strval += m.group(i+1)+",";
		  }
		}
		return strval;
	}
	/**
	 * 截取指定位置的数据
	 * */
	public static String getsubStr(String str,int topLen,int endLen){ 
		
		str = str.substring(topLen,endLen);
		
		return str;
	} 
	/*
	 *  getSortbutton(String fsid,String sortStr) 根据传入的参数 生成指定位数的随机数 fsid 栏目ID ，sortStr 用户权限字符串
	 * 
	 * */			
			public static String getSortbutton(String fsid,String sortStr,String checkboxName){
				
				String str1 = sortStr ;
				
				String str2 = "<" + fsid + ">" ;
				String str3 = "<" ;
				String[] strval = str1.split(str2);
				String[] strval2 = strval[1].split(str3);

				
				String strOk = strval2[0];
				
				String sortButton = "";
					
				if(strOk.indexOf("1")>-1) {//window.location='" + funUrl[0] + "'
					sortButton += "<li><a href=\"javascript:addfun();\"><span><img src='/resources/mfolder/images/t01.png' /></span>添加</a></li>";
				}
				if(strOk.indexOf("2")>-1) {
					sortButton += "<a href=\"javascript:edtfun('"+checkboxName+"');\"><li><span><img src='/resources/mfolder/images/t02.png' /></span>修改</li></a>";
				}
				if(strOk.indexOf("3")>-1) {
					
					sortButton += "<a href=\"javascript:delfun('"+ fsid +"','"+checkboxName+"');\"><li><span><img src='/resources/mfolder/images/t03.png' /></span>删除</li></a>";
					
				}
//				if(strOk.indexOf("4")>-1) {
//					sortButton += "<li><span><img src='/mfolder/images/t04.png' /></span>统计</li>";
//				}

				return sortButton;

			}	
			
			public boolean upLoadFun(HttpServletRequest req,MultipartFile attach) {			
				try {				
					String rootPath = req.getSession().getServletContext().getRealPath("/resources/upload/");
					System.out.println("root Upload File Path="+rootPath);
					File f = new File(rootPath+File.separator+attach.getOriginalFilename());
					FileUtils.copyInputStreamToFile(attach.getInputStream(), f);		
//					String miaosu =  "upload :<br/>getName[属性名]="+ attach.getName()+
//							" , <br/>getOriginalFilename[ 文件名]=" + attach.getOriginalFilename()+ 
//							" , <br/>getContentType[类型] =" + attach.getContentType()+
//							" , <br/>文件 file=" + rootPath+"/"+attach.getOriginalFilename();
					
				} catch (IOException e) {
					System.out.println("*********** upLoadFun error ***********");
					e.printStackTrace();
					return false;
				}
				return true;
			}
			
}
