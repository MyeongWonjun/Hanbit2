<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bbs table {
		color:white;
	    width:1000px;
	    margin-left:10px;
	    border:1px solid #e7e7e7;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#bbs table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#bbs table th,#bbs table td {
	    text-align:center;
	    border:1px solid #e7e7e7;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background-color: #89bdd3;
			text: ;}
	
	.odd {background:silver}
	
	/* paging */
	
	table tfoot ol.paging {
	    list-style:none;
	    margin-left: 250px
	    
	}
	
	table tfoot ol.paging li {
	     float:left; 
	    margin-right:8px;
		padding-bottom: 
	}
	
	table tfoot ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    border:1px solid #00B3DC;
	    color:#2f313e;
	    font-weight:bold;
	}
	
	table tfoot ol.paging li a:hover {
	    background:#00B3DC;
	    color:white;
	    font-weight:bold;
	}
	
	
	.disable {
	    padding:3px 7px;
	    border:1px solid silver;
	    color:silver;
	}
	
	.now {
	   padding:3px 7px;
	    border:1px solid #ff4aa5;
	    background:#ff4aa5;
	    color:white;
	    font-weight:bold;
	}
	.tab_vertical{
	list-style-type: none;
	margin: 0;
	padding: 0;
	width:180px;
	float: left;}
	.tab-title {
	list-style-type: none;  
 	margin: 0;
	padding: 0;
	width:180px;

	}
	.tab-title:HOVER{
		background-color: #9ad3de;
		width:180px;
	}  
	.name{
	color: #89bdd3;}
</style>
</head>
<body>
<jsp:include page="../home/top_menu.jsp"></jsp:include>

	<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</h2>
	<ul class="tab_vertical" d >
		<li class="tab-title"><a href=# >공지사항</a></li>
		<li class="tab-title"><a href=#>자유게시판</a></li>
	</ul>
	<div id="bbs" align="center">
		<table summary="게시판 목록">
			<caption class="name">자유게시판</caption>
			<br/>
			<thead style="outline: none;">
				<tr class="title">
					<th class="no">NO</th>
					<th class="subject">제목</th>
					<th class="writer">작성자</th>
					<th class="reg">작성일</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty list}">
				  <tr><td colspan="5"> 현재 등록된 자료가 없음 </td></tr>
				</c:if>
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="k">
						<tr>
							<td>${k.b_idx}</td>
							<td><a href="/0625_jsp_MVC_BBS/MyController?type=view&b_idx=${k.b_idx}&cPage=${cPage}">${k.subject}</a></td>
							<td>${k.writer}</td>
							<td>${k.write_date.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody> 
			<tfoot >
				<tr>
				<!-- style="background-color: #89bdd3; color: white;" -->
				<td><input type="button" value="글쓰기"  
					onclick="javascript:window.open('board_write.jsp','_blank','width=800, height=600, left=300, top=100, menubar=no, status=no, toolbar=no')"/></td>
					<td colspan="5" align="center">
						<ol class="paging">
						<!--  이전버튼 은 beginPage가 pagePerBlock보다 작으면 비활성화 -->
						<c:choose>
							<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
								  <li class="disable">이전으로</li>
							</c:when>
							<c:otherwise>
							 <li><a href="/0625_jsp_MVC_BBS/MyController?type=list&cPage=${pvo.beginPage-pvo.pagePerBlock }">이전으로</a></li>
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="k" begin="${pvo.beginPage}" end="${pvo.endPage}" step="1">
							<c:choose>
								<c:when test="${k==pvo.nowPage}">
									<li class="now">${k}</li>
								</c:when>
								<c:otherwise>
									<li><a href="/0625_jsp_MVC_BBS/MyController?type=list&cPage=${k}">${k}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pvo.endPage>=pvo.totalPage}">
								  <li class="disable">다음으로</li>
							</c:when>
							<c:otherwise>
								 <li><a href="/0625_jsp_MVC_BBS/MyController?type=list&cPage=${pvo.beginPage+pvo.pagePerBlock }">다음으로</a></li>
							</c:otherwise>
						</c:choose>
						</ol>
					</td>
					<!-- <td>
						<input type="button" value="글쓰기" onclick="javascript:location.href='/0625_jsp_MVC_BBS/MyController?type=write'"/>
					</td> -->
				</tr>
			</tfoot>
		</table>
				<br/><br/>
		<div align="center">
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="search">
				<option>제목</option>
				<option>작성자</option>
			</select>
			
			<input type="text" id="search_what">
			<input type="button" value="검색" >
	 	
		</div>
	</div>
</body>
</html>
