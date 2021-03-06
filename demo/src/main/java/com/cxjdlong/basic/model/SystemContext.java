package com.cxjdlong.basic.model;

/**
 * 用来传递列表对象的ThreadLocal数据
 */
public class SystemContext {
	/**
	 * 分页大小
	 */
	private static int pageSize;
	/**
	 * 分页的起始页
	 */
	private static int pageOffset;
	/**
	 * 列表的排序字段
	 */
	private static String sort;
	/**
	 * 列表的排序方式 升序 降序
	 */
	private static String order;
	public static int getPageSize() {
		return pageSize;
	}
	public static void setPageSize(int pageSize) {
		SystemContext.pageSize = pageSize;
	}
	public static int getPageOffset() {
		return pageOffset;
	}
	public static void setPageOffset(int pageOffset) {
		if(pageOffset<=1){
			pageOffset = 0;
		}else{
			System.out.println("SystemContext.pageSize="+SystemContext.pageSize);
			System.out.println("pageOffset-1="+(pageOffset-1));
			pageOffset=(pageOffset-1) * SystemContext.pageSize;
			System.out.println(pageOffset);
		}
		SystemContext.pageOffset = pageOffset;
		System.out.println("SystemContext.pageOffset2="+SystemContext.pageOffset);
	}
	public static String getSort() {
		return sort;
	}
	public static void setSort(String sort) {
		SystemContext.sort = sort;
	}
	public static String getOrder() {
		return order;
	}
	public static void setOrder(String order) {
		SystemContext.order = order;
	}
	
	
	
}
