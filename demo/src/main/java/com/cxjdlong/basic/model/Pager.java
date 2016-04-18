package com.cxjdlong.basic.model;

import java.util.List;
/**
 * 分页对象
 * @author cxjdlong
 * @param <T>
 * 
 * */

public class Pager<E> {
	/**
	 * 第几页
	 */
	private int pageoffSize;
	/**
	 * 每页显示多少条
	 */
	private int pageSize;
	/**
	 * 总共多少条
	 */
	private int totalRecord;
	/**
	 * 总共多少页
	 */
	private int totalPage;
	/**
	 * 放置具体数据的列表
	 */
	
	private List<E> dates;
	
	
	public int getPageoffSize() {
		return pageoffSize;
	}
	public void setPageoffSize(int pageoffSize) {
			this.pageoffSize = pageoffSize;	
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	
	public List<E> getDates() {
		return dates;
	}
	public void setDates(List<E> dates) {
		this.dates = dates;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage() {
	
		this.totalPage = (totalRecord+pageSize-1)/pageSize;
	}
	
	
}
