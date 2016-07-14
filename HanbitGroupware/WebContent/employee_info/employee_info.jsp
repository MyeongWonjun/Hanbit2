<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.tab_vertical {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width:180px;
	float: left;
	
}

.tab-title:HOVER{
	background-color: #9ad3de;
	width:180px;
}  

#info table {
	    width:1000px;
	    margin-left:10px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#info table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#info table th,#info table td {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.id{width:10% }
	.name {width:10%}
	.email_addr{width:10%}
	.phone{width:10%}
	.job_id{width:10%}
	.department_id{width:10%}
	.manager_id{width:10%}
	.hire_date{width:10%}
	.grate{width:10% }
	

</style>
</head>
<body>
	<jsp:include page="../home/top_menu.jsp"/>
	<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업무지원</h2>
	<ul class="tab_vertical" >
		<li class="tab-title"><a href="download_public.jsp">임직원정보</a></li>
	</ul>
		<div id="search" align="center">
			<select name="search">
				<option>사번</option>
				<option>이름</option>
				<option>직무</option>
				<option>부서</option>
				<option>직급</option>
				
			</select>
			
			<input type="text" id="search_what">
			<input type="button" value="검색" >

		</div>
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div id="info" align="center">
	
		<table summary="임직원 정보 테이블" >
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
				  <tr><td colspan="9">검색된 사원이 없음 </td></tr>
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