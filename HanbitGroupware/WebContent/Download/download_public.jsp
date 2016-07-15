<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #e1e8f0
}

#mainTop {
	text-align: center;
	font-weight: bold;
	font-style: inherit;
	color: #89bdd3;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;b 
	border: 1px solid #e7e7e7;
	background-color: #89bdd3;
}

li {
	float: left;
}

li a, .menu_drop {
	display: block;
	color: #ffffff;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li:hover:not (.active ), #menu:hover #menu_drop {
	background-color: #9ad3de;
}

li a.active {
	color: white;
	background-color: #4CAF50;
}

#drop_content {
	display: none;
	position: absolute;
	background-color: #e3e3e3;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

#drop_content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

#drop_content a:hover {
	background-color: #c9c9c9
}

#menu:hover #drop_content {
	display: block;
}

#btn {
	font-family: Helvetica;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	width: 80px;
	height: 40px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #89bdd3;
}

.tab_vertical {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 180px;
	float: left;
}

.tab-title:HOVER {
	background-color: #9ad3de;
	width: 180px;
}

#bbs table {
	width: 1000px;
	margin-left: 10px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th, #bbs table td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

.no {
	width: 15%
}

.subject {
	width: 30%
}

.writer {
	width: 20%
}

.reg {
	width: 20%
}

.hit {
	width: 15%
}

.title {
	background: lightsteelblue
}

.odd {
	background: silver
}

/* paging */
table tfoot ol.paging {
	list-style: none;
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
}

table tfoot ol.paging li a {
	display: block;
	padding: 3px 7px;
	border: 1px solid #00B3DC;
	color: #2f313e;
	font-weight: bold;
}

table tfoot ol.paging li a:hover {
	background: #00B3DC;
	color: white;
	font-weight: bold;
}

.disable {
	padding: 3px 7px;
	border: 1px solid silver;
	color: silver;
}

.now {
	padding: 3px 7px;
	border: 1px solid #ff4aa5;
	background: #ff4aa5;
	color: white;
	font-weight: bold;
}
</style>
</head>
<body>
	<table border="1" align="center">
		<thead>
			<tr>
				<th colspan="2" width="1280" height="200"><jsp:include
						page="../home/top_menu.jsp"></jsp:include></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px">
				<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업무지원</h2>
					<ul class="tab_vertical">
						<li class="tab-title"><a href="download_public.jsp">공용문서함</a></li>
						<li class="tab-title"><a href="download_document.jsp">업무자료실</a></li>
						<li class="tab-title"><a href="employee_info.jsp">임직원정보</a></li>
					</ul>
				</td>
				<td>
					<div id="bbs" align="center">
		<table summary="게시판 목록">
			<caption>
				<h2>공용문서함</h2>
			</caption>
			<thead style="outline: none;">
				<tr class="title">
					<th class="no">번호</th>
					<th class="subject">제목</th>
					<th class="writer">글쓴이</th>
					<th class="reg">날짜</th>
					<th class="hit">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty list}">
					<tr>
						<td colspan="5">현재 등록된 자료가 없음</td>
					</tr>
				</c:if>
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="k">
						<tr>
							<td>${k.b_idx}</td>
							<td><a
								href="/HanbitGroupware/d_publicController?type=p_view&b_idx=${k.b_idx}&cPage=${cPage}">${k.subject}</a></td>
							<td>${k.writer}</td>
							<td>${k.write_date.substring(0,10)}</td>
							<td>${k.hit}</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
			<tfoot>
				<tr>
					<td><input type="button" value="글쓰기"
						onclick="javascript:window.open('download_p_write.jsp','_blank','width=800, height=600, left=300, top=100, menubar=no, status=no, toolbar=no')" /></td>

					<td colspan="5" align="center">
						<ol class="paging">
							<!--  이전버튼 은 beginPage가 pagePerBlock보다 작으면 비활성화 -->
							<c:choose>
								<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
									<li class="disable">이전으로</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="/HanbitGroupware/d_publicController?type=p_]list&cPage=${pvo.beginPage-pvo.pagePerBlock }">이전으로</a></li>
								</c:otherwise>
							</c:choose>

							<c:forEach var="k" begin="${pvo.beginPage}" end="${pvo.endPage}"
								step="1">
								<c:choose>
									<c:when test="${k==pvo.nowPage}">
										<li class="now">${k}</li>
									</c:when>
									<c:otherwise>
										<li><a
											href="/HanbitGroupware/d_publicController?type=p_list&cPage=${k}">${k}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:choose>
								<c:when test="${pvo.endPage>=pvo.totalPage}">
									<li class="disable">다음으로</li>
								</c:when>
								<c:otherwise>
									<li><a
										href="/HanbitGroupware/d_publicController?type=p_list&cPage=${pvo.beginPage+pvo.pagePerBlock }">다음으로</a></li>
								</c:otherwise>
							</c:choose>
						</ol>
					</td>

				</tr>
			</tfoot>
		</table>
		<br />
		<br />
		<div align="center">

			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="search">
				<option>제목</option>
				<option>작성자</option>
			</select> <input type="text" id="search_what"> <input type="button"
				value="검색">

		</div>


	</div>
				
				
				
				</td>
			</tr>
		</tbody>
	</table>







</body>
</html>



