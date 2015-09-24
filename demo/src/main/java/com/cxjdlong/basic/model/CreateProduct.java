package com.cxjdlong.basic.model;

import java.sql.Date;

public class CreateProduct {

	private int id;		//	id主键		bigint(20) NOT NULL
	private String seoKeyword;				//	seo关键字	varchar(400) NOT NULL
	private String seoDescription;			//	seo描述		varchar(400) NULL
	private String productName;				//	产品名字	varchar(200) NULL
	private String proCaption;			//	产品描述/小标题	varchar(800) NULL
	private int proClassId;
	private String proClassName;				//	产品分类	varchar(50) NOT NULL
	private int isRecommend;				//	是否推荐	int(4) NOT NULL
	private String proImg;					//	产品图片	varchar(400) NULL
	private String proContent;				//	产品内容	text NULL
	private String author;					//	添加者		varchar(50) NULL
	private Date addTimes;				//	添加时间	datetime NULL
	private Date updateTimes;				//	修改时间	datetime NULL
	private int looknum;				//	点击次数	bigint(20) NULL
	private long proOrderNum;
	
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
