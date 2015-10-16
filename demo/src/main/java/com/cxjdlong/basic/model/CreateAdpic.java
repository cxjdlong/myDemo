package com.cxjdlong.basic.model;


import java.util.Date;

public class CreateAdpic {

	private int id;
	private String seoKeyword;				
	private String seoDescription;				
	private String classkey;
	private String picname;
	private String picurl;
	private int isRecommend;
	private int picState;
	private String picContent;
	private String author;
	private Date picstartime;
	private Date picendtime;
	private int picOrder;
	private String picImg;
	
	public String getPicImg() {
		return picImg;
	}
	public void setPicImg(String picImg) {
		this.picImg = picImg;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClasskey() {
		return classkey;
	}
	public void setClasskey(String classkey) {
		this.classkey = classkey;
	}
	public String getPicname() {
		return picname;
	}
	public void setPicname(String picname) {
		this.picname = picname;
	}
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public int getIsRecommend() {
		return isRecommend;
	}
	public void setIsRecommend(int isRecommend) {
		this.isRecommend = isRecommend;
	}
	
	public int getPicState() {
		return picState;
	}
	public void setPicState(int picState) {
		this.picState = picState;
	}
	public String getPicContent() {
		return picContent;
	}
	public void setPicContent(String picContent) {
		this.picContent = picContent;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getPicstartime() {
		return picstartime;
	}
	public void setPicstartime(Date picstartime) {
		this.picstartime = picstartime;
	}
	public Date getPicendtime() {
		return picendtime;
	}
	public void setPicendtime(Date picendtime) {
		this.picendtime = picendtime;
	}
	public int getPicOrder() {
		return picOrder;
	}
	public void setPicOrder(int picOrder) {
		this.picOrder = picOrder;
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
	
	
}
