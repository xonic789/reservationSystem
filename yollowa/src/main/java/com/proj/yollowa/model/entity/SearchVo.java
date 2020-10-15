package com.proj.yollowa.model.entity;

public class SearchVo extends PagingScaleVo {
	
	private String searchType;
	private String keyword;
	
	public SearchVo() {
	}

	public SearchVo(String searchType, String keyword) {
		super();
		this.searchType = searchType;
		this.keyword = keyword;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String serachToString() {
		return "SearchVo [searchType=" + this.searchType + ", keyword=" + this.keyword + "]";
	}
	
}
