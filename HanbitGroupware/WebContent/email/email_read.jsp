<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	String email_addr2 = request.getParameter("email_addr");
	session.setAttribute("email_addr2", email_addr2);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: auto;
}
#btn1 input {
	width: 100px;
	height: 50px;
	margin: 10px;
	color:white;
	background-color: #6ebcfa;
	font-family:Helvetica;
	font-size:12px;
	font-weight: bolder;
	text-align:center;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
#btn1{
	margin-left: 8px;
}
#btn2 input {
	width: 270px;
	height: 100px;
	background-color: white;
	text-transform: capitalize;
	font-weight: bolder;
	text-align: left;
	font-size: 15px;
	border-bottom-color: white;
}
#btn4 input{
	width: 80px;
	height: 25px;
	margin-left: 5px;
	color:white;
	background-color: #6ebcfa;
	font-family:Helvetica;
	font-size:12px;
	font-weight: bolder;
	text-align:center;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
#text input{
	margin-left: 50px;
	font-weight:bolder;
	color: silver;
	font-size: 20px;
	border-radius: 7px;
}

#btn3 input{
	width: 50px;
	height: 25px;
	color:white;
	background-color: #6ebcfa;
	font-family:Helvetica;
	font-size:12px;
	font-weight: bolder;
	text-align:center;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	position: relative;
	top: -3px;
}
#chk1 input {
	width: 20px;
	height: 20px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	position: relative;
	top: 6px;
}
#btn4 span{
	position: relative;
	right: 28px;
}

#list{
	width: 20px;
	height: 20px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

</style>
<script type="text/javascript">
	function write_go(f) {
		f.action="email/email_write.jsp?email_addr=<%=email_addr2%>";
		f.submit();
	}
	function write_goME(f) {
		f.action="email/email_writeME.jsp?email_addr=<%=email_addr2%>";
		f.submit();
	}
	function all_go(f) {
		f.action="/HanbitGroupware/Email?type=getAllEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function receive_go(f) {
		f.action="/HanbitGroupware/Email?type=getEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function send_go(f) {
		f.action="/HanbitGroupware/Email?type=getSendEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function me_go(f) {
		f.action="/HanbitGroupware/Email?type=getSendMEEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function search_go(f) {
		f.action="/HanbitGroupware/Email?type=getSearchEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function delete_go(f){
		var ck = confirm("삭제 하시겠습니까?");
		if(ck==true){
			f.action = "/HanbitGroupware/Email?type=getDelete&email_addr=<%=email_addr2%>";
			f.submit();
		}
	}
	function answer_go(f) {
		f.action="/HanbitGroupware/Email?type=getAnswer2&email_addr=<%=email_addr2%>";
		f.submit();
	}
</script>
</head>
<body>
<form method="post">
<table border="1" align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td width="200px">
            	<span id="btn1">
					<input type="button" value="메일쓰기" onclick="write_go(this.form)"/>
					<input type="button" value="내게쓰기" onclick="write_goME(this.form)"/>
				</span>
				<div id="btn2">
					<input type="button" value="전체메일" onclick="all_go(this.form)"/>
					<br/>
					<input type="button" value="받은메일함" onclick="receive_go(this.form)"/>
					<br/>
					<input type="button" value="보낸메일함" onclick="send_go(this.form)"/>
					<br/>
					<input type="button" value="내게쓴메일함" onclick="me_go(this.form)"/>
					<br/>
					<input type="button" value="스팸메일함"/>
				</div>
            </td>
            <td  style="vertical-align: top;" >
            	<table>
            	<thead>
            		<tr>
            			<th colspan="3" width="995px" align="left">
							<p>
							<sapn id="btn4">
								<input type="button" value="삭제" onclick="delete_go(this.form)"/>
								<input type="button" value="답장" onclick="answer_go(this.form)"/>
								<hr/>
							</span>
							</p>
            			</th>
            		</tr>
            	</thead>
            	<tbody>
            		<tr>
            			<td width="10%">${vo_email.subject}</td>
            		</tr>
            		<tr>
            			<td width="10%">from : ${vo_email.sender_addr}</td>
            		</tr>
            		<tr>
            			<td width="10%">${vo_email.regdate.substring(0,16)}</td>
            		</tr>
            		<tr>
            			<td width="10%">
            			<c:choose>
							<c:when test="${vo_email.real_file != null}">
								<a href="email/download.jsp?f_name=${vo_email.real_file}">${vo_email.real_file}</a>
							</c:when>
							<c:otherwise>
								첨부파일 없음
							</c:otherwise>
						</c:choose>
						</td>
            		</tr>
            		<tr>
            			<td colspan="2">
            				<hr style="position: relative; top: 10px"/>
            			</td>
            		</tr>
            	</tbody>
            	<tfoot>
            		<tr>
            			<td colspan="3">
            				<div rows="25" cols="130" style="position: relative; left: 10px">${vo_email.content}</div>
 							<input type="hidden" name="idx" value="${vo_email.idx}">
            			</td>
            		</tr>
            	</tfoot>
            </td>
         </tr>
      </tbody>
</table>
</form>
</body>
</html>





































