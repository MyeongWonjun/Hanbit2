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
	<table border="1">
		<thead>
			<tr>
				<th>번호</th> <th>제목</th> <th>작성일</th> 
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty noticeList}">
				<tr>
					<td colspan="9">공지사항이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${!empty noticeList}">
				<c:forEach var="k" items="${noticeList}" begin="1" end="5">
					<tr>
						<td>${k.sender_addr}</td>
						<td><a href="#">${k.subject}</a></td>
						<td>${k.regdate.substring(0,10)}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>