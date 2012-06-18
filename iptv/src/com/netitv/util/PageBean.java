package com.netitv.util;

import java.util.List;

/**
 * 页面数据包装类
 * @author zhuqh
 *
 */
public class PageBean {
	
	private int curPage = 1;// get the

	private int totalPages;// all pages

	private int pageSize = 10;
	
	private List items;

	private boolean hasPreviousPage = false;// whether has the previsous page

	private boolean hasNextPage = false; // whether has the next page
	
	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public boolean isHasPreviousPage() {
		return hasPreviousPage;
	}

	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}

	public int getTotalPages() {
		return totalPages;
	}
	
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public List getItems() {
		return items;
	}

	public void setItems(List items) {
		this.items = items;
	}

	public void hasPreAndNextPage() {
		if (this.curPage > 1) {// whether have the previous page
			this.setHasPreviousPage(true);
		} else {
			this.setHasPreviousPage(false);
		}
		if (this.curPage < this.getTotalPages()) {// whether has the nexe page
			this.setHasNextPage(true);
		} else {
			this.setHasNextPage(false);
		}
	}

	public PageBean(List items, int totalCount, int pageSize,int curPage) {
		
		this.items = items;
		this.pageSize = pageSize;
		this.curPage = curPage;
		this.totalPages = (totalCount+pageSize-1)/pageSize;
		
		hasPreAndNextPage();
	}

}
