<%@page import="com.hanbit.vo.VO_employees"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	VO_employees vo_employees = (VO_employees)request.getAttribute("vo_employees");
	session.setAttribute("info", vo_employees);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td width="200px">사이드바</td>
            <td>
            	<div id="notice">
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
				<c:forEach var="k" items="${noticeList}">
					<tr>
						<td>${k.b_idx}</td>
						<td><a href="/HanbitGroupware/BoardController?type=boardView&b_idx=${k.b_idx}">${k.subject}</a></td>
						<td>${k.regdate.substring(0,10)}</td>
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
</body>
</html>