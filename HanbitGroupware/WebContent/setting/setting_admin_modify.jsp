<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����������</title>
<style type="text/css">

.btn2{
	
	font-size:12px;
	text-align:center;
	width: 70px;
	height: 30px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #89bdd3;
	color: white;
	
}

	td{
		text-align: center
	}
h2{
  color: #89bdd3;
}
</style>

</head>
<body>
<%-- <jsp:include page="../home/top_menu.jsp" /> --%>
<table border="1" align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
         <td width="200px">
              <h2 class="name">ȯ�漳��</h2>
			      <ul class="tab_vertical" d>
						<li class="tab-title"><a href=#>������</a></li>
						<li class="tab-title"><a href=#>�����������</a></li>
						<li class="tab-title"><a href=#>������</a></li>
					</ul>
		</td>
            <td><form method="post" action="inputPro.jsp" name="userinput"
		onSubmit="return checkIt()">
		<table width="700" height="500" border="1" cellspacing="0" cellpadding="0"
			align="center" >
			<tr>
				<td colspan="2" height="45" align="center" bgcolor="#89bdd3" >
					<font size="+1" font color="white" ><b>�����������</b></font>
				</td>
			</tr>
			<tr>
				<td width="200" >���</td>
				<td width="400" ></td>
			</tr>
			<tr>
				<td width="200">��й�ȣ</td>
				<td width="400">
				<input type="password" name="passwd" size="30" maxlength="12" ></td>
			<tr>
				<td width="200">��й�ȣ Ȯ��</td>
				<td width="400"><input type="password" name="passwd2" size="30"
					maxlength="12"></td>
			</tr>
			<tr>
				<td width="200" >�̸�</td>
				<td width="400" ><input type="name" name="name" size="30" maxlength="12" ></td>
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
				<td width="400"><input type="department_name" name="department_name" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">����</td>
				<td width="400"><input type="job_id" name="job_id" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">���</td>
				<td width="400"><input type="salary" name="salaty" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">������</td>
				<td width="400"><input type="manager_id" name="manager_id" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">�Ի�����</td>
				<td width="400"></td>
			</tr>
			<tr>
				<td width="200">���ȵ��</td>
				<td width="400"><input type="grade" name="grade" size="30" maxlength="12" ></td>
			</tr>
			<tr >
			<td colspan="2">
				<input type="button" class="btn2" value="����">
		        <input type="button" class="btn2" value="���">
			</td>
			</tr>
		</table>
	</form>
</td>
         </tr>
      </tbody>
   </table>
</table>
</body>
</html>