<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

</script>
<style type="text/css">
#mainTop {
	text-align: center;
	font-weight: bold;
	font-style: inherit;
	color: #62bcfa;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #e7e7e7;
	background-color: #f3f3f3;
}

li {
	float: left;
}

li a {
	display: block;
	color: #666;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: #ddd;
}

li a.active {
	color: white;
	background-color: #4CAF50;
}
tr {
	color: #666;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}


</style>
</head>
<body>
	<h2 id="mainTop">�� �� �� �� �� ��</h2>
	<ul>
		<li><a href="#home">Home</a></li>
		<li><a href="#e-mail">E-mail</a></li>
		<li><a href="#schedule">Schedule</a></li>
		<li><a href="#board">Board</a></li>
		<li><a href="#download">Download</a></li>
		<li><a href="#support">��������</a></li>
		<li><a href="#configuration">ȯ�漳��</a></li>
	</ul>
<br />
<br />

</table>
	<form method="post" action="inputPro.jsp" name="userinput"
		onSubmit="return checkIt()">
		<table width="700" height="500" border="1" cellspacing="0" cellpadding="0"
			align="center" >
			<tr>
				<td colspan="2" height="45" align="left" bgcolor="#c5d5cd">
					<font size="+1"><b>�⺻����</b></font>
				</td>
			</tr>
			<tr>
				<td width="200" >���</td>
				<td width="400" ></td>
			</tr>
			<tr>
				<td width="200">��й�ȣ</td>
				<td width="400"><input type="password" name="passwd" size="30"
					maxlength="12"></td>
			<tr>
				<td width="200">��й�ȣ Ȯ��</td>
				<td width="400"><input type="password" name="passwd2" size="30"
					maxlength="12"></td>
			</tr>
			<tr>
				<td width="200" >�̸�</td>
				<td width="400" ></td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" ><input type="email" name="email" size="30"
					maxlength="12"></td>
			</tr>
			<tr>
				<td width="200">��ȭ��ȣ</td>
				<td width="400"><input type="phone" name="phone" size="30"
					maxlength="12"></td>
				
			</tr>
			<tr>
				<td width="200">�μ�</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td width="200">����</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td width="200">���</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td width="200">������</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td width="200">�Ի�����</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td width="200">���ȵ��</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td colspan="2" height="45" align="center" >
				<input type="submit" name="confirm" value="����"style="width:75;  background-color:#c5d5cd; border:1 solid #A0DBE4">

				<input type="reset" name="reset" value="���"style="width:75; background-color:#c5d5cd; border:1 solid #A0DBE4">

				</td>
			</tr>
		</table>
	</form>

</body>
</html>