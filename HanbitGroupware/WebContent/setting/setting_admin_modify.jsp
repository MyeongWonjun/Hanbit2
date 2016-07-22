<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    	request.setCharacterEncoding("utf-8");
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>사원정보수정</title>
<style type="text/css">

 
 form table{
     text-align: center;
     border: 1px solid #89bdd3;
   
 }
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
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
function sendData(f){
	for(var i=0 ; i<document.forms[0].elements.length ; i++){
		if(document.forms[0].elements[i].value == ""){
			if(i==3) continue;
			alert(document.forms[0].elements[i].name+
					"를 입력하세요");
			document.forms[0].elements[i].focus();
			return;//수행 중단
		}
	}
	
	document.forms[0].submit();
	var chk = confirm("수정하시겠습니까?");
	if(chk==true){
	f.action="/HanbitGroupware/s_em?type=setUpdate2&id=${vo_employees.id}";
	f.submit();
	}
	alert("수정되었습니다.");
}
function delete_go(f) {
	var chk = confirm("삭제하시겠습니까?");
	if(chk==true){
	}
	f.action="/HanbitGroupware/s_em?type=setDelete&id=${vo_employees.id}";
	f.submit();
	alert("삭제되었습니다.");
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
      <tbody >
         <tr>
         <td width="200px">
              <h2 class="name">환경설정</h2>
			      <ul class="tab_vertical" d>
						<li class="tab-title"><a href="/HanbitGroupware/s_em?type=setting_list&id=${info.id}">사원목록</a></li>
						<li class="tab-title"><a href="setting/setting_admin_insert.jsp">사원등록</a></li>
					</ul>
		</td>
            <td><form method="post" >
		<table width="700" height="500" border="1" cellspacing="0" cellpadding="0"
			align="center" >
			<tr>
				<td colspan="2" height="45" align="center" bgcolor="#89bdd3" >
					<font size="+1" font color="white" ><b>사원정보수정</b></font>
				</td>
			</tr>
			<c:choose>
			  <c:when test="${info.id eq vo_employees.id}">
			  <tr>
				<td width="200" >사번</td>
				<td width="400" >${info.id}</td>
			</tr>
			<tr>
				<td width="200">새로운비밀번호</td>
				<td width="400">
				<input type="password" name="passwd" size="30" maxlength="12" ></td>
			</tr>
			
			<tr>
				<td width="200" >이름</td>
				<td width="400" ><input type="text" name="name" value="${info.name}"  id="target" size="30" maxlength="15" ></td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" ><input type="text" name="email_addr"  value="${info.email_addr }"size="30"
					maxlength="30"></td>
			</tr>
			<tr>
				<td width="200">전화번호</td>
				<td width="400"><input type="text" name="phone" value="${info.phone }"size="30"
					maxlength="15"></td>
				
			</tr>
			<tr>
				<td width="200">부서</td>
				<td width="400"><input type=" text" name="job_id" value="${info.job_id}"></td>
			</tr>
			<tr>
				<td width="200">연봉</td>
				<td width="400"><input type="text" name="salary" value="${info.salary}"></td>
			</tr>
			<tr>
				<td width="200">담당</td>
				<td width="400"><input type="text" name="department_name" value="${info.department_name}"></td>
			</tr>
			<tr>
				<td width="200">입사일자</td>
				<td width="400">${info.hire_date}</td>
			</tr>
			<tr>
				<td width="200">보안등급</td>
				<td width="400"><input type="text" name="grade" value="${info.grade}"></td>
			</tr>
			</c:when>
			<c:otherwise>
			<tr>
			  <td width="200" >사번</td>
				<td width="400" >${vo_employees.id}</td>
			</tr>
			<tr>
				<td width="200">새로운비밀번호</td>
				<td width="400">
				<input type="password" name="passwd" size="30" maxlength="12" ></td>
		</tr>
			<tr>
				<td width="200" >이름</td>
				<td width="400" ><input type="text" name="name" id="target" value="${vo_employees.name}" size="30" maxlength="15" ></td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" ><input type="text" name="email_addr"  value="${vo_employees.email_addr}"size="30"
					maxlength="30"></td>
			</tr>
			<tr>
				<td width="200">전화번호</td>
				<td width="400"><input type="text" name="phone" value="${vo_employees.phone}"size="30"
					maxlength="15"></td>
				
			</tr>
			<tr>
				<td width="200">부서</td>
				<td width="400"><input type=" text" name="job_id" value="${vo_employees.job_id}"></td>
			</tr>
			<tr>
				<td width="200">연봉</td>
				<td width="400"><input type="text" name="salary" value="${vo_employees.salary}"></td>
			</tr>
			<tr>
				<td width="200">담당</td>
				<td width="400"><input type="text" name="department_name" value="${vo_employees.department_name}"></td>
			</tr>
			<tr>
				<td width="200">입사일자</td>
				<td width="400">${vo_employees.hire_date}</td>
			</tr>
			<tr>
				<td width="200">보안등급</td>
				<td width="400"><input type="text" name="grade" value="${vo_employees.grade}"></td>
			</tr>
			</c:otherwise>
			</c:choose>
			<tr >
			<td colspan="2">
				<input type="button" class="btn2" value="수정" onclick="sendData(this.form)">
		        <input type="button" class="btn2" value="취소" onclick="back_go(this.form)" />
		        <input type="button" class="btn2" value="삭제" onclick="delete_go(this.form)" />
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