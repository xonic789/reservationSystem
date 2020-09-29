package com.proj.yollowa.model.service.cs;

public class PagingScale {
	private int page;
	private int perPageNum;
	
	public PagingScale() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	//각 페이지의 시작 위치 번호
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
		}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
		}
		this.perPageNum = perPageNum;
	}

	@Override
	public String toString() {
		return "PagingScale [page=" + page + ", perPageNum=" + perPageNum + ", getPageStart()=" + getPageStart() + "]";
	}
	
	
}
