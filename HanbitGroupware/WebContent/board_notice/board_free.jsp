<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bbs table {
	color: white;
	width: 1000px;
	margin-left: 10px;
	border: 1px solid #e7e7e7;
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
	border: 1px solid #e7e7e7;
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
	background-color: #89bdd3;
	text:;
}

.odd {
	background: silver
}

/* paging */
table tfoot ol.paging {
	list-style: none;
	margin-left: 250px
}

table tfoot ol.paging li {
	float: left;
	margin-right: 8px;
	padding-bottom:
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

.tab_vertical {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 180px;
	float: left;
}

.tab-title {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 180px;
}

.tab-title:HOVER {
	background-color: #9ad3de;
	width: 180px;
}

.name {
	color: #89bdd3;
}
</style>
<script type="text/javascript"
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
   $(function() {
      //최상단 체크박스 클릭
      $("#chk_all").click(function() {
         //클릭되었으면
         if ($("#chk_all").prop("checked")) {
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=ck]").prop("checked", true);
            //클릭이 안되있으면
         } else {
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=ck]").prop("checked", false);
         }
      })
   });

   function delete_go(f) {
      var ck = confirm("삭제하시겠습니까?");
      if (ck) {
         f.action = "/HanbitGroupware/BoardController?type=select_del&board_type=${board_type}";
      }else{
    	  history.go(-1);
      }
      f.submit();
   }
</script>
</head>

<body>
	<form method="post">
	<table align="center">
		<thead>
			<tr>
				<th colspan="2" width="1280" height="200"><jsp:include
						page="../home/top_menu.jsp"></jsp:include></th>
						
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px" valign="top">
					<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</h2>
					<ul class="tab_vertical" d>
						<li class="tab-title"><a href=#>공지사항</a></li>
						<li class="tab-title"><a href=#>자유게시판</a></li>
					</ul>
					
				</td>
				<td>
					<div id="bbs" align="center">
						<table summary="게시판 목록">
							<caption class="name">${board_type }</caption>
							<br />
							<thead style="outline: none;">
								<tr class="title">
									<c:choose>
										<c:when test="${info.grade eq '관리자'}">
											<div align="left" id="chk">
												<span id="chk1">
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<input type="checkbox" id="chk_all" />
												</span>
												<sapn id="selectall"> 전체선택 <input type="button"
													value="삭제" name="delete" onclick="delete_go(this.form)" />
												</span>
											</div>
										</c:when>
									</c:choose>
									<c:choose>
										<c:when test="${info.grade eq '관리자'}">
											<th class="select">선택</th>
										</c:when>
									</c:choose>
									<th class="no">NO</th>
									<th class="subject">제목</th>
									<th class="writer">작성자</th>
									<th class="reg">작성일</th>
									<th class="hit">조회수</th>
								</tr>
							</thead>
							<tbody style="color: black">
								<c:if test="${empty boardList}">
									<tr>
										<td colspan="5">현재 등록된 자료가 없음</td>
									</tr>
								</c:if>
								<c:if test="${!empty boardList}">
									<c:forEach items="${boardList}" var="k" varStatus="status">
										<tr>
											<c:choose>
												<c:when test="${info.grade eq '관리자'}">
													<td><input type="checkbox" id="list" value="${k.b_idx}" name="ck" /></td>
												</c:when>
											</c:choose>
											<td>${boardList.size()-status.count+1}</td>
											<%-- <td><a
												href="/HanbitGroupware/BoardController?type=view&b_idx=${k.b_idx}&cPage=${cPage}">${k.subject}</a></td> --%>
											<td><a style="text-decoration: none;" href="/HanbitGroupware/BoardController?type=boardView&b_idx=${k.b_idx}">${k.subject}</a></td>
											<%-- <td>${k.subject}</td> --%>
											<td>${k.name}</td>
											<td>${k.regdate.substring(0,10)}</td>
											<td>${k.hit}</td>
										</tr>
										 
									</c:forEach>
								</c:if>
							</tbody>
							<tfoot>
								<tr>
									<td>
										<input type="button" value="글쓰기" onclick="location.href='/HanbitGroupware/BoardController?type=boardWrite&board_type=${board_type}'"/>
										
									</td>
									<td colspan="5" align="center">
										<ol class="paging">
											<!--  이전버튼 은 beginPage가 pagePerBlock보다 작으면 비활성화 -->
											<c:choose>
												<c:when test="${pvo.beginPage < pvo.pagePerBlock}">
													<li class="disable">이전으로</li>
												</c:when>
												<c:otherwise>
													<li><a
														href="/HanbitGroupware/BoardController?type=boardList&board_type=${board_type }&cPage=${pvo.beginPage-pvo.pagePerBlock }">이전으로</a></li>
												</c:otherwise>
											</c:choose>
											<c:forEach var="k" begin="${pvo.beginPage}"
												end="${pvo.endPage}" step="1">
												<c:choose>
													<c:when test="${k==pvo.nowPage}">
														<li class="now">${k}</li>
													</c:when>
													<c:otherwise>
														<li><a
															href="/HanbitGroupware/BoardController?type=boardList&board_type=${board_type }&cPage=${k}">${k}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${pvo.endPage>=pvo.totalPage}">
													<li class="disable">다음으로${pvo.endPage }</li>
												</c:when>
												<c:otherwise>
													<li><a href="/HanbitGroupware/BoardController?type=boardList&board_type=${board_type }&cPage=${pvo.beginPage+pvo.pagePerBlock }">다음으로${cPage}</a>
													</li>
												</c:otherwise>
											</c:choose>
										</ol>
									</td>
								</tr>
							</tfoot>
						</table>
						<br />
						<br />
					</div>
				</td>
			</tr>
		</tbody>	
	</table>
	</form>
	<div align="center">
		<form action="/HanbitGroupware/BoardController">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="search">
				<option value="subject">제목</option>
				<option value="name">이름</option>
			</select> <input type="text" name="search_what"> 
			<input type="submit" value="검색" /> 
			<input type="hidden" name="board_type" value="${board_type }" /> 
			<input type="hidden" name="type"value="search" />
		</form>
	</div>
</body>
</html>
