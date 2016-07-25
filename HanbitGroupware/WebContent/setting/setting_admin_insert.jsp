<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사원등록</title>
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
.tab-title {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 200px;
}
.tab-title:HOVER {
	background-color: #9ad3de;
	width: 200;
}
</style>
<script type="text/javascript">
  function insert_go(f) {
			for(var i=0 ; i<document.forms[0].elements.length ; i++){
				if(document.forms[0].elements[i].value == ""){
					
					alert(document.forms[0].elements[i].name+
							"를 입력하세요");
					document.forms[0].elements[i].focus();
					return;//수행 중단
				}
			}
			if(document.forms[0].elements[1].value != document.forms[0].elements[2].value){
				alert("비밀번호를 확인해주세요")
			}else{
			document.forms[0].submit();
			var chk = confirm("등록하시겠습니까?");
			if(chk==true){
			f.action="/HanbitGroupware/s_em?type=setInsert";
			f.submit();
			}
			}
}
  function back_go() {
      history.go(-1);
	  }
</script>
</head>
<body>
<%-- <jsp:include page="../home/top_menu.jsp" /> --%>
<table  align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
         <td width="200px" valign="top">
					<h2 class="name">환경설정</h2>
					<ul class="tab_vertical" >
						<li class="tab-title"><a href=/HanbitGroupware/s_em?type=setting_list&id=${info.id}>사원목록</a></li>
						<li class="tab-title"><a href=/HanbitGroupware/s_em?type=insertPage>사원등록</a></li>
					</ul>
         </td>
         
            <td>
      <form method="post">
		<br/>
		<br/>
		<br/>
		<table width="700" height="500" border="1" cellspacing="0" cellpadding="0"
			align="center" >
			<tr>
				<td colspan="2" height="45" align="center" bgcolor="#89bdd3" >
					<font size="+1" font color="white" ><b>사원등록</b></font>
				</td>
			</tr>
			<tr>
				<td width="200" >사번</td>
				<td width="400" ><input type="text" name="id" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">비밀번호</td>
				<td width="400">
				<input type="password" name="pwd" size="30" maxlength="15" ></td>
			<tr>
				<td width="200">비밀번호 확인</td>
				<td width="400"><input type="password" name="pwd2" size="30"
					maxlength="15"></td>
			</tr>
			<tr>
				<td width="200" >이름</td>
				<td width="400" ><input type="text" name="name" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200" bgcolor="">E-Mail</td>
				<td width="400" ><input type="text" name="email_addr" size="30"
					maxlength="30"></td>
			</tr>
			<tr>
				<td width="200">전화번호</td>
				<td width="400"><input type="text" name="phone" size="30"
					maxlength="15"></td>
				
			</tr>
			<tr>
				<td width="200">부서</td>
				<td width="400"><input type="text" name="department_name" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">직급</td>
				<td width="400"><input type="text" name="job_id" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">연봉</td>
				<td width="400"><input type="text" name="salary" size="30" maxlength="12" ></td>
			</tr>
			<tr>
				<td width="200">보안등급</td>
				<td width="400"><input type="text" name="grade" size="30" maxlength="12" ></td>
			</tr>
			<tr >
			<td colspan="2">
				<input type="button" class="btn2" value="확인" onclick="insert_go(this.form)"/>
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