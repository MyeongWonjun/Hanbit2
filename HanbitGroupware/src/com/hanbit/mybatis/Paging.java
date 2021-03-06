package com.hanbit.mybatis;

public class Paging {
	
	 // ������ ��� �� ���۹�ȣ�� ����ȣ ���ϱ�
	int nowPage = 1 ; // ���� ������
	int nowBlock = 1 ; // ������
	int totalRecord = 0 ; // �� �Խù��� �� (������ ��)
	int numPerPage =5 ; // �� ������ ������ �Խù��� ��
	int pagePerBlock = 3 ; // ��ϴ� ǥ���� �������� ��
	int totalPage = 0; // ��ü �������� ��
	int totalBlock = 0 ; // ��ü ����� ��
	int begin = 0 ; // mapper�� �� ���� ��
	int end = 0 ;   // mapper�� �� �� ��
	int beginPage = 0; // ����� ����
	int endPage = 0; // ����� ��
	
	// ��ü �Խù��� ���� ������ ��ü �������� ���� ���Ѵ�.
	// totalPage = ��ü �Խù� / numPerPage ** �������� ������ totalPage+1
	public void setTotalPage(){
		totalPage = totalRecord / numPerPage;
		if(totalRecord % numPerPage != 0) totalPage++;
	}
	
	public int getBeginPage() {
		return beginPage;
	}


	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getNowBlock() {
		return nowBlock;
	}

	public void setNowBlock(int nowBlock) {
		this.nowBlock = nowBlock;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getNumPerPage() {
		return numPerPage;
	}

	public void setNumPerPage(int numPerPage) {
		this.numPerPage = numPerPage;
	}

	public int getPagePerBlock() {
		return pagePerBlock;
	}

	public void setPagePerBlock(int pagePerBlock) {
		this.pagePerBlock = pagePerBlock;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
}
