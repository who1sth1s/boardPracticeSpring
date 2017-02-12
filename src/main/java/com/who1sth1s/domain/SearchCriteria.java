package com.who1sth1s.domain;

public class SearchCriteria {
	
	private String searchType;
	private String keyword;
	
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
	
	@Override
	public String toString() {
		return super.toString() + " SearchCriteria" + "[searchType=" + searchType + ", keyword=" + keyword + "]";
	}
}
