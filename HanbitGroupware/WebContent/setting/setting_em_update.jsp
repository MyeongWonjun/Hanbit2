<%@page import="com.hanbit.vo.VO_employees"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    request.setCharacterEncoding("utf-8");
    VO_employees vo_employees = (VO_employees)request.getAttribute("vo_employees");
	session.setAttribute("s_em", vo_employees);
	
%>
<%-- <<jsp:useBean id="vo_employees"class="com.hanbit.vo.VO_employees" scope="session"/>
<jsp:setProperty property="*" name="vo_employees"/> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������������</title>
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
	function sendData(f){
		for(var i=0 ; i<document.forms[0].elements.length ; i++){
			if(document.forms[0].elements[i].value == ""){
				if(i==3) continue;
				alert(document.forms[0].elements[i].name+
						"�� �Է��ϼ���");
				document.forms[0].elements[i].focus();
				return;//���� �ߴ�
			}
		}
		if("${info.pwd}"==document.forms[0].elements[0].value){
		if(document.forms[0].elements[1].value != document.forms[0].elements[2].value){
			alert("���ο� ��й�ȣ�� Ȯ�����ּ���")
		}else{
		var ck= confirm("�����Ͻðڽ��ϱ�?");
		if(ck==true){
			
		document.forms[0].submit();
		location.href="/HanbitGroupware/s_em?type=setUpdate&id=${info.id}";
		f.action="/HanbitGroupware/s_em?type=setUpdate&id=${info.id}";
		f.submit();
		}
		}
	}else{
		alert("��й�ȣ�� ���� �ʽ��ϴ�.")
	}
		}
	
	function home_go() {
		location.href="/HanbitGroupware/home?type=main";
	}
	</script>
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
            <td><form method="post">
		<table width="700" height="500" border="1" cellspacing="0" cellpadding="0"
			align="center" >
			<tr>
				<td colspan="2" height="45" align="center" bgcolor="#89bdd3" >
					<font size="+1" font color="white" ><b>�⺻��������</b></font>
				</td>
			</tr>
			<tr>
				<td width="200" >���</td>
				<td width="400" >${info.id}
				</td>
			</tr>
			<tr>
				<td width="200">���� ��й�ȣ</td>
				<td width="400"><input type="password" name="pwd" value="${info.pwd }" size="30"
					maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">���ο� ��й�ȣ</td>
				<td width="400"><input type="password" name="passwd" size="30"
					maxlength="12" ></td>
			<tr>
				<td width="200">���ο� ��й�ȣ Ȯ��</td>
				<td width="400"><input type="password" name="passwd2" size="30"
					maxlength="12"></td>
			</tr>
			<tr>
				<td width="200" >�̸�</td>
				<td width="400" >${info.name}</td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" ><input type="email" name="email" value="${info.email_addr }" size="30"
					maxlength="12"></td>
			</tr>
			<tr>
				<td width="200">��ȭ��ȣ</td>
				<td width="400"><input type="phone" name="phone" value="${info.phone }" size="30"
					maxlength="12"></td>
				
			</tr>
			<tr>
				<td width="200">�μ�</td>
				<td width="400">${info.job_id}</td>
			</tr>
			<tr>
				<td width="200">����</td>
				<td width="400">${info.salary}</td>
			</tr>
			<tr>
				<td width="200">���</td>
				<td width="400">${info.department_name}</td>
			</tr>
			<tr>
				<td width="200">������</td>
				<td width="400">${info.manager_id}</td>
			</tr>
			<tr>
				<td width="200">�Ի�����</td>
				<td width="400">${info.hire_date}</td>
			</tr>
			<tr>
				<td width="200">���ȵ��</td>
				<td width="400">${info.grade}</td>
			</tr>
			<tr >
			<td colspan="2">
				<input type="button" class="btn2" value="Ȯ��" onclick="sendData(this.form)">
				<input type="button" class="btn2" value="���" >
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