<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="http://localhost:8090/HanbitGroupware/BoardController?type=boardList&board_type=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD" style="text-decoration: none;">>>공지사항 전체보기</a>
	<table>
		<thead>
			<tr>
				<th>번호</th> <th width="300">제목</th> <th width="100">작성일</th> 
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty noticeList}">
				<tr>
					<td colspan="9">공지사항이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty noticeList}">
				<c:forEach var="k" items="${noticeList}" begin="0" end="5">
					<tr align="center">
						<td>${k.b_idx}</td>
						<td><a href="/HanbitGroupware/BoardController?type=boardView&b_idx=${k.b_idx}">${k.subject}</a></td>
						<td>${k.regdate.substring(0,10)}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>