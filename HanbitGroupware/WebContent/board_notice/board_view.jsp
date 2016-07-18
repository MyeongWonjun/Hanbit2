
<%@page import="java.util.List"%>
<%@page import="com.hanbit.vo.VO_board"%>
<%@page import="com.hanbit.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bbs table {
	    width:580px;
	    margin-left:10px;
	    border:1px solid black;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#bbs table caption {
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#bbs table th {
	    text-align:center;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	#bbs table td {
	    text-align:left;
	    border:1px solid black;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	
	.odd {background:silver}
	
		
</style>
<script type="text/javascript">
	function modify_go() {
		document.f.action="modify.jsp";
		document.f.submit();
	}
	function delete_go() {
		document.f.action="delete.jsp";
		document.f.submit();
	}
	function list_go() {
		document.f.action="list.jsp?cPage=${cpage}";
		document.f.submit();
	}
</script>
</head>
<body>
	<div id="bbs">
	<form method="post" name="f">
		<table summary="게시판 글쓰기">
			<caption>게시판 글쓰기</caption>
			<tbody>
				<tr>
					<th>제목:</th>
					<td>${bvo.subject}</td>
				</tr>

				<tr>
					<th>첨부파일:</th>
					<td>
					  <c:choose>
					  	<c:when test="${bvo.file_name != null }">
					  		<a href="download.jsp?f_name=${bvo.file_name }">${bvo.file_name }</a>
					  	</c:when>
					    <c:otherwise>
					    	첨부파일 없음
					    </c:otherwise>
					  </c:choose>
					</td>
				</tr>
				
				<tr>
					<th>이름:</th>
					<td>${bvo.writer}</td>
				</tr>
				<tr>
					<th>내용:</th>
					<td><pre>${bvo.content}</pre></td>
				</tr>
				
				<tr align="center">
					<td colspan="2" >
						<!-- 공지사항에는 없음 -->
						<input type="button" value="수정" onclick="modify_go()"/>
						<input type="button" value="삭제" onclick="delete_go()"/>
						<input type="button" value="목록" onclick="list_go()"/>
					    <input type="hidden" name="b_idx" value="${bvo.b_idx}" /> 
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
</body>
</html>










