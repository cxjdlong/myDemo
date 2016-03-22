package com.cxjdlong.basic.model;

import java.util.Date;;

public class Createnews {
	
	private int id ;
	private String seoKeyword;				
	private String seoDescription;				
	private int classID ;
	private String newsImg;
	private String newsTitle  ;
	private String newsContent  ;
	private String author ;
	private int looknum ;
	private int isrecommend ;
	private Date addtimes  ;
	private Date updatetime ;
	
	private Createnewstype newstype;
	
	public int getClassID() {
		return classID;
	}
	public void setClassID(int classID) {
		this.classID = classID;
	}
	public String getNewsImg() {
		return newsImg;
	}
	public void setNewsImg(String newsImg) {
		this.newsImg = newsImg;
	}
	public Date getAddtimes() {
		return addtimes;
	}
	public String getSeoKeyword() {
		return seoKeyword;
	}
	public void setSeoKeyword(String seoKeyword) {
		this.seoKeyword = seoKeyword;
	}
	public String getSeoDescription() {
		return seoDescription;
	}
	public void setSeoDescription(String seoDescription) {
		this.seoDescription = seoDescription;
	}
	public void setAddtimes(Date addtimes) {
		this.addtimes = addtimes;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getLooknum() {
		return looknum;
	}
	public void setLooknum(int looknum) {
		this.looknum = looknum;
	}
	
	public int getIsrecommend() {
		return isrecommend;
	}
	public void setIsrecommend(int isrecommend) {
		this.isrecommend = isrecommend;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public Createnewstype getNewstype() {
		return newstype;
	}
	public void setNewstype(Createnewstype newstype) {
		this.newstype = newstype;
	}


}
