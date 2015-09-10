package com.cxjdlong.basic.model;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class User {
	
	@NotEmpty(message = "{user.id.null}")
	private String id;
	
	@Past(message = "{user.datetime.error}")
	@NotNull(message = "{user.datetime.null}")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdatetime;
	
	private Date modifydatetime;

	@NotEmpty(message = "{user.name.null}")
	@Length(min = 5, max = 20, message = "{user.name.length.illegal}") 
	private String name;

	private String pwd;

	private Date createTime;

	private Date updateTime;
	
	
	public User(){
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Date getCreatedatetime() {
		return createdatetime;
	}


	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}


	public Date getModifydatetime() {
		return modifydatetime;
	}


	public void setModifydatetime(Date modifydatetime) {
		this.modifydatetime = modifydatetime;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public Date getCreateTime() {
		return createTime;
	}


	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public Date getUpdateTime() {
		return updateTime;
	}


	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}


	public User(String id, String name, String pwd) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
	

	


}