<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
b
<table border="1" align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td width="200px">
				<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업무지원</h2>
					<ul class="tab_vertical">
						<li class="tab-title"><a href="download_public.jsp">공용문서함</a></li>
						<li class="tab-title"><a href="download_document.jsp">업무자료실</a></li>
						<li class="tab-title"><a href="employee_info.jsp">임직원정보</a></li>
					</ul>
				</td>
            <td>
            
            <div id="bbs">
	<form action="/HanbitGroupware/public?type=p_writeOK" method="post" encType="multipart/form-data">
		<table summary="게시판 글쓰기">
			<caption>게시판 글쓰기</caption>
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" size="45"/></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" size="12"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
					<textarea id="content" name="content" cols="50" rows="8"></textarea>
					
					</td>
					
					
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="file_name"/></td>
				</tr>
			
				</tbody>
				<tfoot align="center">
				<tr>
					<td colspan="2">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;

						<input type="button" value="보내기" onclick="sendData()"/>
						<input type="reset" value="다시"/>
						<input type="button" value="목록" onclick="list_go()"/>
						<input type="hidden" name="chk" value="chk" />
					</td>
				</tr>
				</tfoot>
		</table>
	</form>
	</div>
            
            
            
            
            </td>
         </tr>
      </tbody>
   </table>

</body>
</html>