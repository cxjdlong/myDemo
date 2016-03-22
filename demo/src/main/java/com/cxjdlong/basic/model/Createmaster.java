package com.cxjdlong.basic.model;

import java.util.Date;

public class Createmaster {
	private int id;
	private String userid;
	private String userpswd;
	private String userOldpsw;
	private String tename;
	private String tecaption;
	private String temail;
	private String tel;
	private int	isclose;
	private Date lastlogintime;
	private Date logintime;
	private String lastIP;
	private String loginIp;
	private String userAuthority;
	private Date addusertime;
	
	public Date getAddusertime() {
		return addusertime;
	}
	public void setAddusertime(Date addusertime) {
		this.addusertime = addusertime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpswd() {
		return userpswd;
	}
	public void setUserpswd(String userpswd) {
		this.userpswd = userpswd;
	}
	public String getUserOldpsw() {
		return userOldpsw;
	}
	public void setUserOldpsw(String userOldpsw) {
		this.userOldpsw = userOldpsw;
	}
	public String getTename() {
		return tename;
	}
	public void setTename(String tename) {
		this.tename = tename;
	}
	public String getTecaption() {
		return tecaption;
	}
	public void setTecaption(String tecaption) {
		this.tecaption = tecaption;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getIsclose() {
		return isclose;
	}
	public void setIsclose(int isclose) {
		this.isclose = isclose;
	}
	public Date getLastlogintime() {
		return lastlogintime;
	}
	public void setLastlogintime(Date lastlogintime) {
		this.lastlogintime = lastlogintime;
	}
	public Date getLogintime() {
		return logintime;
	}
	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}
	public String getLastIP() {
		return lastIP;
	}
	public void setLastIP(String lastIP) {
		this.lastIP = lastIP;
	}
	public String getLoginIp() {
		return loginIp;
	}
	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}
	public String getUserAuthority() {
		return userAuthority;
	}
	public void setUserAuthority(String userAuthority) {
		this.userAuthority = userAuthority;
	}
	
	
}
