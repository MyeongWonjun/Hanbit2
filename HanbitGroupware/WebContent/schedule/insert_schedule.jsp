<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 align="center">스케쥴</h3>
	<form action="/HanbitGroupware/Schedule">
	<table border="1" align="center">
		<tbody align="center">
			<tr>
				<th>종류</th>
				<td><input type="text" name="type2"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<th>내용(행선지)</th>
				<td><input type="text" name="content"></td>
			</tr>
			<tr>
				<th>시작일</th>
				<td><input type="date" name="start_date"></td>
			</tr>
			<tr>
				<th>종료일</th>
				<td><input type="date" name="end_date"></td>
			</tr>
		</tbody>
	</table>
	<p align="center"><input type="submit" value="추가"><input type="button" value="창닫기" onclick="self.close()"></p>
	<input type="hidden" name="type" value="insert" />
	<input type="hidden" name="id" value="${info.id}" />
	</form>
</body>
</html>