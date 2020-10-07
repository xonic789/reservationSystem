package com.proj.yollowa.model.entity.cs;

public class PagingScaleVo {
	private int page;
	private int perPageNum;
	private int pageNavNum=5;
    private int totalCnt;
    private int startPage;
    private int endPage;
    private boolean prev;
    private boolean next;
    
	public PagingScaleVo() {
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
			return;
		}
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
		pagingProc();
	}
	
	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	private void pagingProc() {
		endPage = (int) (Math.ceil(getPage() / (double) pageNavNum) * pageNavNum);
        startPage = (endPage - pageNavNum) + 1;
        int tempEndPage = (int) (Math.ceil(totalCnt / (double) getPerPageNum()));
       
        if(endPage > tempEndPage) {
            endPage = tempEndPage;
        }

        prev = startPage == 1 ? false : true;
        next = endPage * getPerPageNum() >= totalCnt ? false : true;
		
	}

	@Override
	public String toString() {
		return "PagingScale [page=" + page + ", perPageNum=" + perPageNum + ", pageNavNum=" + pageNavNum + ", totalCnt="
				+ totalCnt + ", startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next
				+ "]";
	}
	
	
	
	
	
}
