package com.cxjdlong.basic.model;

import java.util.Date;

public class CreateProduct {

	private int id;	
	private String seoKeyword;				
	private String seoDescription;			
	private String productName;				
	private String proCaption;			
	private int proClassId;
	private String proClassName;				
	private int isRecommend;				
	private String proImg;					
	private String proContent;				
	private String author;					
	private Date addTimes;				
	private Date updateTimes;				
	private int looknum;				
	private long proOrderNum;
	private Createprotype protype;
	
	public Createprotype getProtype() {
		return protype;
	}
	public void setProtype(Createprotype protype) {
		this.protype = protype;
	}
	public long getProOrderNum() {
		return proOrderNum;
	}
	public void setProOrderNum(long proOrderNum) {
		this.proOrderNum = proOrderNum;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProCaption() {
		return proCaption;
	}
	public void setProCaption(String proCaption) {
		this.proCaption = proCaption;
	}

	public String getProClassName() {
		return proClassName;
	}
	public void setProClassName(String proClassName) {
		this.proClassName = proClassName;
	}
	public int getIsRecommend() {
		return isRecommend;
	}
	public void setIsRecommend(int isRecommend) {
		this.isRecommend = isRecommend;
	}
	public String getProImg() {
		return proImg;
	}
	public void setProImg(String proImg) {
		this.proImg = proImg;
	}
	public String getProContent() {
		return proContent;
	}
	public void setProContent(String proContent) {
		this.proContent = proContent;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getAddTimes() {
		return addTimes;
	}
	public void setAddTimes(Date addTimes) {
		this.addTimes = addTimes;
	}
	public Date getUpdateTimes() {
		return updateTimes;
	}
	public void setUpdateTimes(Date updateTimes) {
		this.updateTimes = updateTimes;
	}
	public int getLooknum() {
		return looknum;
	}
	public void setLooknum(int looknum) {
		this.looknum = looknum;
	}
	public int getProClassId() {
		return proClassId;
	}
	public void setProClassId(int proClassId) {
		this.proClassId = proClassId;
	}

	
}
