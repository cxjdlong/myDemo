package com.cxjdlong.basic.model;

public class Resourcefields {
	private int id ;
	private int fid ;
	private String fieldName  ;
	private String resType ;
	private int fieldsIsclose ;
	private String resString ;
	private int fieldsOrder ;
	private String descn ;
	private String parameter ;
	
	public String getDescn() {
		return descn;
	}
	public void setDescn(String descn) {
		this.descn = descn;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getFieldName() {
		return fieldName;
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	public int getFieldsIsclose() {
		return fieldsIsclose;
	}
	public void setFieldsIsclose(int fieldsIsclose) {
		this.fieldsIsclose = fieldsIsclose;
	}
	public int getFieldsOrder() {
		return fieldsOrder;
	}
	public void setFieldsOrder(int fieldsOrder) {
		this.fieldsOrder = fieldsOrder;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getParameter() {
		return parameter;
	}
	public void setParameter(String parameter) {
		this.parameter = parameter;
	}
	public String getResString() {
		return resString;
	}
	public void setResString(String resString) {
		this.resString = resString;
	}
	public String getResType() {
		return resType;
	}
	public void setResType(String resType) {
		this.resType = resType;
	}
}
