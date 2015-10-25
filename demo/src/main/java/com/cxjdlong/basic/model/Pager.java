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
	private int pageoffSise;
	/**
	 * 每页显示多少条
	 */
	private int pageSize;
	/**
	 * 总共多少条
	 */
	private long totalRecord;
	/**
	 * 总共多少页
	 */
	private int totalPage;
	/**
	 * 放置具体数据的列表
	 */
	
	private List<E> dates;
	
	
	public int getPageoffSise() {
		return pageoffSise;
	}
	public void setPageoffSise(int pageoffSise) {
		this.pageoffSise = pageoffSise;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public long getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(long totalRecord) {
		this.totalRecord = totalRecord;
	}
	
	public List<E> getDates() {
		return dates;
	}
	public void setDates(List<E> dates) {
		this.dates = dates;
	}
	
	
}
