package com.cxjdlong.basic.model;

import java.sql.Date;

public class Createcompanyinfo {
	private int id;
	private String seoKeyword;
	private String seoDescription;
	private String keyid;
	private String title ;
	private String content ;
	private Date updateTimes ;
	private Date addtimes ;
	
	public Date getAddtimes() {
		return addtimes;
	}
	public void setAddtimes(Date addtimes) {
		this.addtimes = addtimes;
	}
	public String getContent() {
		return content;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getUpdateTimes() {
		return updateTimes;
	}
	public void setUpdateTimes(Date updateTimes) {
		this.updateTimes = updateTimes;
	}
	public String getKeyid() {
		return keyid;
	}
	public void setKeyid(String keyid) {
		this.keyid = keyid;
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
