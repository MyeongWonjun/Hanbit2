<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#info table {
	width: 1200px;
	margin-left: 10px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#info table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#info table th, #info table td {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

.id {
	width: 11%
}

.name {
	width: 11%
}

.email_addr {
	width: 12%
}

.phone {
	width: 11%
}

.job_id {
	width: 11%
}

.department_id {
	width: 11%
}

.manager_id {
	width: 11%
}

.hire_date {
	width: 11%
}

.grade {
	width: 11%
}

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

.title {
	background-color: #89bdd3;
}
</style>
</head>
<body>
	<h1>임직원정보</h1>
	<div>
		<form align="right">
			<select name="search">
				<option>사번</option>
				<option>이름</option>
				<option>직무</option>
				<option>부서</option>
				<option>직급</option>
			</select> 
			<input type="text" name="search_what" />
			<input type="submit" value="검색" />
		</form>
	</div>

	<div id="info" align="center">
		<table summary="임직원 정보 테이블">
			<thead>
				<tr class="title">
					<td class="id">사번</td>
					<td class="name">이름</td>
					<td class="email_addr">이메일</td>
					<td class="phone">전화번호</td>
					<td class="job_id">직무</td>
					<td class="department_id">부서</td>
					<td class="manager_id">매니저</td>
					<td class="hire_date">입사일</td>
					<td class="grade">직급</td>
				</tr>
			</thead>

			<tbody>
				<c:if test="${empty list}">
					<tr>
						<td colspan="9">검색된 사원이 없음</td>
					</tr>
				</c:if>
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="k">
						<tr>
							<td>${k.id}</td>
							<td>${k.name}</td>
							<td>${k.email_addr}</td>
							<td>${k.phone}</td>
							<td>${k.department_id}</td>
							<td>${k.manager_id}</td>
							<td>${k.hire_date}</td>
							<td>${k.grade}</td>

						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>