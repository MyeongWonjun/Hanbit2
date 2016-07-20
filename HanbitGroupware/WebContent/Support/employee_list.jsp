<%@page import="com.hanbit.vo.VO_employees"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	VO_employees member = (VO_employees)session.getAttribute("info");
	boolean login = member == null ? false : true;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tab_vertical>li {
	display: block;
	color: #ffffff;
	text-align: center;
	font-size: 15px;
	padding: 10px 10px;
	text-decoration: none;
	text-align: center;
	width: 200px;
}

.tab-title:HOVER {
	background-color: #9ad3de;
	width: 200px;
}

#info table {
	width: 1080px;
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
	width: 10%
}

.name {
	width: 10%
}

.email_addr {
	width: 15%
}

.phone {
	width: 15%
}

.job_id {
	width: 10%
}

.department_id {
	width: 15%
}

.manager_id {
	width: 10%
}

.hire_date {
	width: 15%
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
	<%
		if(!login){
			response.sendRedirect("../home/login.jsp");
		}else{
	%>
	<table align="center" border="1px">
		<thead>
			<tr>
				<th colspan="2" width="500" height="200">
					<jsp:include page="../home/top_menu.jsp" />
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px">
					<h2 align="center">업무지원</h2>
					<ul class="tab_vertical">
						<li class="tab-title"><a href="#">업무자료실</a></li>
						<li class="tab-title"><a href="#">공용문서함</a></li>
						<li class="tab-title" style="background-color: #9ad3de;"><a
							href="#">임직원정보</a></li>
					</ul>
				</td>
				<td valign="top" align="center">
					&nbsp;&nbsp;&nbsp;<h4 align="left">업무지원 > 임직원정보</h4>
					<div style="text-align: right">
						<form action="/HanbitGroupware/Support">
							<select name="search">
								<option value="id">사번</option>
								<option value="name">이름</option>
								<option value="job_id">직무</option>
								<option value="department_name">부서</option>
								<option value="grade">직급</option>
							</select> 
							<input type="text" name="search_what" />
							<input type="hidden" name="type" value="search" />
							<input type="submit"value="검색" />
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
									<td class="department_name">부서</td>
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
											<td><a href="" onclick="javascript:window.open('/HanbitGroupware/Support?type=show&id=${k.id}', '_blank', 'top=300, left=700,width=300,height=320,resizable=no');">${k.name}</a></td>
											<td>${k.email_addr}</td>
											<td>${k.phone}</td>
											<td>${k.job_id}</td>
											<td>${k.department_name}</td>
											<td>${k.manager_id}</td>
											<td>${k.hire_date.substring(0,10)}</td>
											<td>${k.grade}</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	<%
		}
	%>
</body>
</html>