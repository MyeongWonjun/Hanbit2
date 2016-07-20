<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th{
		background-color: #9ad3de;
	}
	td{
		text-align: center;
	}
</style>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
	%>
	<h3 align="center">상세보기</h3>
	<table border="1" align="center">
		<tr>
			<th>이름</th>
			<td>${vo.name}</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${vo.email_addr}</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>${vo.phone}</td>
		</tr>
		<tr>
			<th>업무</th>
			<td>${vo.job_id}</td>
		</tr>
		<tr>
			<th>부서</th>
			<td>${vo.department_name}</td>
		</tr>
		<tr>
			<th>매니져</th>
			<td>${vo.manager_id}</td>
		</tr>
		<tr>
			<th>입사일</th>
			<td>${vo.hire_date.substring(0,10)}</td>
		</tr>
	</table>
	<p align="center"><input type="button" value="창닫기" onclick="self.close()"></p>
</body>
</html>