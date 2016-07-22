<%@page import="com.hanbit.vo.VO_employees"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>개인정보수정</title>
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
				
				alert(document.forms[0].elements[i].name+
						"를 입력하세요");
				document.forms[0].elements[i].focus();
				return;//수행 중단
			}
		}
		if("${info.pwd}"==document.forms[0].elements[0].value){
		if(document.forms[0].elements[1].value != document.forms[0].elements[2].value){
			alert("새로운 비밀번호를 확인해주세요")
		}else{
		var ck= confirm("수정하시겠습니까?");
		if(ck==true){
			
		document.forms[0].submit();
		location.href="/HanbitGroupware/s_em?type=setUpdate&id=${info.id}";
		f.action="/HanbitGroupware/s_em?type=setUpdate&id=${info.id}";
		f.submit();
		}
		}
	}else{
		alert("비밀번호가 맞지 않습니다.")
	}
		}
	
	function back_go() {
      history.go(-1);
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
					<font size="+1" font color="white" ><b>기본정보수정</b></font>
				</td>
			</tr>
			<tr>
				<td width="200" >사번</td>
				<td width="400" >${info.id}</td>
			</tr>
			<tr>
				<td width="200">기존 비밀번호</td>
				<td width="400"><input type="password" name="pwd" value="${info.pwd }" size="30"
					maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">새로운 비밀번호</td>
				<td width="400"><input type="password" name="passwd" size="30"
					maxlength="15" ></td>
			<tr>
				<td width="200">새로운 비밀번호 확인</td>
				<td width="400"><input type="password" name="passwd2" size="30"
					maxlength="15"></td>
			</tr>
			<tr>
				<td width="200" >이름</td>
				<td width="400" >${info.name}</td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" ><input type="email" name="email" value="${info.email_addr }" size="30"
					maxlength="30"></td>
			</tr>
			<tr>
				<td width="200">전화번호</td>
				<td width="400"><input type="phone" name="phone" value="${info.phone }" size="30"
					maxlength="15"></td>
				
			</tr>
			<tr>
				<td width="200">부서</td>
				<td width="400">${info.job_id}</td>
			</tr>
			<tr>
				<td width="200">연봉</td>
				<td width="400">${info.salary}</td>
			</tr>
			<tr>
				<td width="200">담당</td>
				<td width="400">${info.department_name}</td>
			</tr>
			<tr>
				<td width="200">입사일자</td>
				<td width="400">${info.hire_date}</td>
			</tr>
			<tr>
				<td width="200">보안등급</td>
				<td width="400">${info.grade}</td>
			</tr>
			<tr >
			<td colspan="2">
				<input type="button" class="btn2" value="확인" onclick="sendData(this.form)"/>
				<input type="button" class="btn2" value="취소" onclick="back_go(this.form)" />
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