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
            <td>${info.id}<br>
            	${info.pwd}<br>
            	${info.name}<br>
            	${info.email_addr}<br>
            	${info.phone}<br>
            	${info.job_id}<br>
            	${info.salary}<br>
            	${info.department_name}<br>
            	${info.manager_id}<br>
            	${info.hire_date.substring(0,10)}<br>
            	${info.grade}
            </td>
         </tr>
      </tbody>
   </table>
</body>
</html>