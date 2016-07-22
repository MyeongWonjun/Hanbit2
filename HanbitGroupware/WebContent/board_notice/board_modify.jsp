<%@page import="com.hanbit.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String b_idx = request.getParameter("b_idx");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bbs table {
	width: 580px;
	margin-left: 10px;
	border: 1px solid black;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th {
	text-align: center;
	border: 1px solid black;
	padding: 4px 10px;
}

#bbs table td {
	text-align: left;
	border: 1px solid black;
	padding: 4px 10px;
}

.no {
	width: 15%
}

.subject {
	width: 30%
}

.writer {
	width: 20%
}

.reg {
	width: 20%
}

.hit {
	width: 15%
}

.title {
	background: lightsteelblue
}

.odd {
	background: silver
}
</style>
<script type="text/javascript">
	function sendData() {
		/* for(var i=0 ; i<document.forms[0].elements.length ; i++){
			if(document.forms[0].elements[i].value == ""){
				if(i==3) continue;
				alert(document.forms[0].elements[i].name+
						"를 입력하세요");
				document.forms[0].elements[i].focus();
				return;//수행 중단
			}
		} */
		document.forms[0].submit();
	}
	function list_go() {
		location.href = "/HanbitGroupware/BoardController?type=boardUpdate";
	}
</script>

<script type="text/javascript" src="/HanbitGroupware/ckeditor/ckeditor.js">

 		CKEDITOR.replace('content',{
 		});
 		CKEDITOR.instances.content.getData();
	
</script>
</head>
<body>
	<table border="1" align="center">
		<thead>
			<tr>
				<th colspan="2" width="1280" height="200"><jsp:include
						page="../home/top_menu.jsp"></jsp:include></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px" valign="top">
					<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</h2>
					<ul class="tab_vertical" d>
						<li class="tab-title"><a href="/HanbitGroupware/BoardController?type=boardList&board_type=공지사항">공지사항</a></li>
						<li class="tab-title"><a href="/HanbitGroupware/BoardController?type=boardList&board_type=자유게시판">자유게시판</a></li>
					</ul>

				</td>


				<td>

					<div id="bbs">
						<form action="/HanbitGroupware/BoardController?type=boardUpdate" method="post"
							encType="multipart/form-data">
							<table summary="게시판 수정">
								<caption>게시판 수정</caption>
								<tbody>
									<tr>
										<th>제목:</th>
										<td><input type="text" name="subject" size="45" value="${vo.subject }" /></td>
									</tr>
									<tr>
										<th>이름:</th>
										<td>${vo.name }<input type="hidden" name="name" size="12"  value="${vo.name}" /></td>
									</tr>
									<tr>
										<th>내용:</th>
										<td><textarea class="ckeditor" id="content" name="content" cols="50" rows="8">${vo.content}</textarea></td>
									</tr>
									<tr>
										<th>첨부파일:</th>
										<td><input type="file" name="board_file"/>(${vo.board_file })</td>
									</tr>
									<tr>
										<td colspan="2">
										<input type="button" value="수정하기" onclick="sendData()" /> 
										<input type="reset" value="다시" /> 
										<input type="button" value="목록" onclick="list_go()" /> 
										<input type="hidden" name="b_idx" value="${vo.b_idx }" />
										<input type="hidden" name="f_n" value="${vo.board_file }" />
										<input type="hidden" name="board_type" value="${vo.board_type }" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</td>
			</tr>
		</tbody>
	</table>

</body>
</html>

