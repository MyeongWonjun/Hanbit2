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
<table align="center">
      <thead>
         <tr>
            <th colspan="3" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
	      <tr >
	      	<td><img alt="" src="img/img1.png"> </td>
	      	  <td valign="top" >
            	<div id="notice">
            		<jsp:include page="/home/notice.jsp" />
            	</div>
            	
            </td>
	      </tr>
        <%--  <tr>
            
          
           <td>
            	<div id="email">
            		<jsp:include page="/home/email.jsp" />
            	</div>
            </td> 
         </tr> --%>
      </tbody>
      <tfoot>
      	<tr>
      		<td colspan="3"><p></p></td>
      	</tr>
      </tfoot>
   </table>
</body>
</html>