<%@page import="com.hanbit.vo.VO_employees"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String email_addr = request.getParameter("email_addr");
	session.setAttribute("email_addr", email_addr);
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
	function write_ok(f) {
		f.action="/HanbitGroupware/Email?type=write&email_addr=<%=email_addr%>";
		f.submit();
	}
</script>
</head>
<body>

<form method="post" enctype="multipart/form-data">
<table align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td width="200px">
            	<span id="btn1">
					<input type="button" value="메일쓰기"/>
					<input type="button" value="내게쓰기"/>
				</span>
				<div id="btn2">
					<input type="button" value="전체메일"/>
					<br/>
					<input type="button" value="받은메일함"/>
					<br/>
					<input type="button" value="보낸메일함"/>
					<br/>
					<input type="button" value="내게쓴메일함"/>
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
								<input type="button" value="보내기" onclick="write_ok(this.form)"/>
								<hr/>
							</span>
							</p>
            			</th>
            		</tr>
            	</thead>
            	<tbody>
            		<table width="1000">
            			<tbody>
            				<tr>
            					<td width="100">받는 사람</td>
            					<td><input type="text" name="receiver" size="50" value="<%=email_addr%>" disabled="disabled"></td>
            				</tr>
            				<tr>
            					<td width="100">제목</td>
            					<td><input type="text" name="subject" size="50" value="Subject"></td>
            				</tr>
            				<tr>
            					<td width="100">파일첨부</td>
            					<td><input type="file" name="email_file"></td>
            				</tr>
            				<tr>
            					<td colspan="2"><hr/></td>
            				</tr>
            			</tbody>
            			<tfoot>
            				<tr>
            					<td colspan="2" style="position: relative; left: 30px"><textarea rows="23" cols="130" name="content">content</textarea></td>
            				</tr>
            			</tfoot>
            		</table>
            	</tbody>
            </td>
         </tr>
      </tbody>
</table>
</form>

</body>
</html>