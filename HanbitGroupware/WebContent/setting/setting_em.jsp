<%@page import="com.hanbit.vo.VO_employees"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
	request.setCharacterEncoding("utf-8");
    VO_employees vo_employees = (VO_employees)request.getAttribute("vo_employees");
	session.setAttribute("s_em", vo_employees);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��������</title>
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

</style>
<script type="text/javascript">
	function update_go(f) {
		f.action="setting/setting_em_update.jsp";
		f.submit();
	}

</script>
</head>
<body>
<%-- <jsp:useBean id="vo_employees" class="com.hanbit.vo.VO_employees" scope="session"/>
<jsp:setProperty property="*" name="vo_employees"/> --%>
<table border="1" align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
           
            <td><form>
		<table width="700" height="500" border="1" cellspacing="0" cellpadding="0"
			align="center" >
			<tr>
				<td colspan="2" height="45" align="left" bgcolor="#89bdd3" >
					<font size="+1" font color="white" ><b>�⺻����</b></font>
				</td>
			</tr>
			<tr>
				<td width="200" >���</td>
				<td width="400" >${vo_employees.id}</td>
			</tr>
			<tr>
				<td width="200">��й�ȣ</td>
				<td width="400">${vo_employees.pwd}</td>
			<tr>
				<td width="200">��й�ȣ Ȯ��</td>
				<td width="400">${vo_employees.pwd}</td>
			</tr>
			<tr>
				<td width="200" >�̸�</td>
				<td width="400" >${vo_employees.name}</td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" >${vo_employees.email_addr}</td>
			</tr>
			<tr>
				<td width="200">��ȭ��ȣ</td>
				<td width="400">${vo_employees.phone}</td>
				
			</tr>
			<tr>
				<td width="200">�μ�</td>
				<td width="400">${vo_employees.job_id}</td>
			</tr>
			<tr>
				<td width="200">����</td>
				<td width="400">${vo_employees.salary}</td>
			</tr>
			<tr>
				<td width="200">���</td>
				<td width="400">${vo_employees.department_name}</td>
			</tr>
			<tr>
				<td width="200">������</td>
				<td width="400">${vo_employees.manager_id}</td>
			</tr>
			<tr>
				<td width="200">�Ի�����</td>
				<td width="400">${vo_employees.hire_date}</td>
			</tr>
			<tr>
				<td width="200">���ȵ��</td>
				<td width="400">${vo_employees.grade}</td>
			</tr>
			<tr >
			<td colspan="2">
				<input type="button" class="btn2" value="����"onclick="update_go(this.form)" />
			</td>
			</tr>
		</table>
	</form></td>
         </tr>
      </tbody>
   </table>

</body>
</html>