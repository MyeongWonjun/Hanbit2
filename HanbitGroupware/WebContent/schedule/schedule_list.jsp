<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인일정 목록</title>
<style type="text/css">
	a{
		text-decoration: none;
	}
</style>
</head>
<body>
	<h3 align="center">스케쥴</h3>
	<table align="center" border="1">
		<thead>
			<tr>
				<th>종류</th> <th>제목</th> <th>내용(행선지)</th> <th>시작일</th> <th>종료일</th> 
			</tr>
		</thead>
		<tbody align="center">
			<c:forEach var="k" items="${list}">
				<tr>
					<td>${k.type}</td>
					<td><a href="/HanbitGroupware/Schedule?type=show&idx=${k.idx}">${k.subject}</a></td>
					<td>${k.content}</td>
					<td>${k.start_date.substring(0,10)}</td>
					<td>${k.end_date.substring(0,10)}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p align="center"><input type="button" value="일정추가" onclick="javascript:location.href='/HanbitGroupware/schedule/insert_schedule.jsp'"><input type="button" value="창닫기" onclick="self.close()"></p>
</body>
</html>