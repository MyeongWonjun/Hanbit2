<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인일정 수정</title>
<style type="text/css">
	a{
		text-decoration: none;
	}
</style>
</head>
<body>
	<h3 align="center">스케쥴</h3>
	<form action="/HanbitGroupware/Schedule">
	<table border="1" align="center">
		<tbody align="center">
			<tr>
				<th>종류</th>
				<td><input type="text" name="type2" value="${sc.type}"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" value="${sc.subject}"></td>
			</tr>
			<tr>
				<th>내용(행선지)</th>
				<td><input type="text" name="content" value="${sc.content}"></td>
			</tr>
			<tr>
				<th>시작일</th>
				<td><input type="date" name="start_date" value="${sc.start_date.substring(0,10)}"></td>
			</tr>
			<tr>
				<th>종료일</th>
				<td><input type="date" name="end_date" value="${sc.end_date.substring(0,10)}"></td>
			</tr>
		</tbody>
	</table>
	<p align="center"><input type="submit" value="수정"><input type="button" value="취소" onclick="javascript:history.go(-1);"><input type="button" value="창닫기" onclick="self.close()"></p>
	<input type="hidden" name="type" value="update" />
	<input type="hidden" name="id" value="${sc.id}" />
	<input type="hidden" name="idx" value="${sc.idx}" />
	</form>
</body>
</html>