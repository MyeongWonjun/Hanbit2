<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.tab_vertical > li{
    display: block;
    color: #ffffff;
    text-align: center;
    font-size: 15px;
    padding: 10px 10px;
    text-decoration: none;
    text-align: center;
    width: 180px;
}

.tab-title:HOVER {
	background-color: #9ad3de;
	width: 180px;
}
</style>
</head>
<body>
	<table align="center">
		<thead>
			<tr>
				<th colspan="2" width="1280" height="200"><jsp:include
						page="../home/top_menu.jsp"></jsp:include></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px">
					<h2 align="center">업무지원</h2>
					<ul class="tab_vertical">
						<li class="tab-title"><a href="#">업무자료실</a></li>
						<li class="tab-title"><a href="#">공용문서함</a></li>
						<li class="tab-title" style="background-color: #9ad3de;"><a href="#">임직원정보</a></li>
					</ul>
				</td>
				<td valign="top" align="center">
					<jsp:include page="employee_list.jsp"></jsp:include>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>