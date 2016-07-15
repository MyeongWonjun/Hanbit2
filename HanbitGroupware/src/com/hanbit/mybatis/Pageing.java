package com.hanbit.mybatis;

public class Pageing {
	   int nowPage = 1 ; // �쁽�옱 �럹�씠吏�
	   int nowBlock = 1 ; // �쁽�옱釉붾줉
	   int totalRecord = 0 ; // 珥� 寃뚯떆臾쇱쓽 �닔 (�썝湲��쓽 �닔)
	   int numPerPage = 3 ; // �븳 �럹�씠�떦 蹂댁뿬吏� 寃뚯떆臾쇱쓽 �닔
	   int pagePerBlock = 3 ; // 釉붾줉�떦 �몴�쁽�맆 �럹�씠吏��쓽 �닔
	   int totalPage = 0; // �쟾泥� �럹�씠吏��쓽 �닔
	   int totalBlock = 0 ; // �쟾泥� 釉붾줉�쓽 �닔
	   int begin = 0 ; // mapper�뿉 �뱾�뼱媛� �떆�옉 媛�
	   int end = 0 ;   // mapper�뿉 �뱾�뼱媛� �걹 媛�
	   int beginPage = 0 ; // 釉붾줉�쓽 �떆�옉
	   int endPage = 0; // 釉붾줉�쓽 �걹
	   
	// �쟾泥� 寃뚯떆臾쇱쓽 �닔瑜� 媛�吏�怨�  �쟾泥� �럹�씠吏��쓽 �닔瑜� 援ы븳�떎.
	//  totalPage = �쟾泥� 寃뚯떆臾� / numPerPage  ** �굹癒몄�媛� �엳�쑝硫� totalPage+1
	 public void setTotalPage(){
		 totalPage = totalRecord / numPerPage ;
		   if(totalRecord % numPerPage != 0) totalPage ++ ;
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
	
}
