package com.web.cookie.a01_song.a04_vo;

public class Prodt_sal_chartSch {
	private String sal_month;
	private int count; // 전체게시물건수
	private int pageSize; // 한번에 보일 데이터 건수
	private int curPage; // 클릭한 현재 페이지 번호
	private int pageCount; // 전체 페이지 수 
	private int start; // 해당 페이지의 시작번호
	private int end; //해당 페이지의 마지막번호
	private int blockSize; // 페이지 블럭의 크기
	private int startBlock; //페이지블럭의 시작번호
	private int endBlock; // 페이지 블럭의 끝번호
	public Prodt_sal_chartSch() {
		// TODO Auto-generated constructor stub
	}
	public Prodt_sal_chartSch(String sal_month, int count, int pageSize, int curPage, int pageCount, int start, int end,
			int blockSize, int startBlock, int endBlock) {
		super();
		this.sal_month = sal_month;
		this.count = count;
		this.pageSize = pageSize;
		this.curPage = curPage;
		this.pageCount = pageCount;
		this.start = start;
		this.end = end;
		this.blockSize = blockSize;
		this.startBlock = startBlock;
		this.endBlock = endBlock;
	}
	public String getSal_month() {
		return sal_month;
	}
	public void setSal_month(String sal_month) {
		this.sal_month = sal_month;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	
}
