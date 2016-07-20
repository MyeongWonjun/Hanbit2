<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: white;
}
#mainTop {
	text-align: center;
	font-weight: bold;
	font-style: inherit;
	color: #89bdd3;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    border: 1px solid #e7e7e7;
    background-color: #89bdd3;
}

li {
    float: left;
}

li a, .menu_drop {
    display: block;
    color: #ffffff;
    text-align: center;
    font-size: 20px;
    padding: 14px 16px;
    text-decoration: none;
}

li:hover:not(.active), #menu:hover #menu_drop{
    background-color: #9ad3de;
}
li div a{
	font-size: 16px;
}

li a.active {
    color: white;
    background-color: #4CAF50;
}

#drop_content {
    display: none;
    position: absolute;
    background-color: #e3e3e3;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

#drop_content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

#drop_content a:hover {background-color: #c9c9c9}

#menu:hover #drop_content {
    display: block;
}

#btn{
	
	font-family:Helvetica;
	font-size:12px;
	font-weight: bold;
	text-align:center;
	width: 80px;
	height: 40px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #6ebcfa;
	color: white;
	
}

</style>
<script type="text/javascript">
	function logout_go() {
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="/HanbitGroupware/Login?type=logout";
		}else{
			return;
		}
	}
</script>
</head>
<body>
	<h1 id="mainTop" align="center">
		HANBIT SYSTEM	
	</h1>
	<p align="right">
	<input id="btn" type="button" value="MY" />
	<input id="btn" type="button" value="LOGOUT" onclick="logout_go()" />
	<p>
	<div>
	<ul>
		<li><a href="#home">Home</a></li>
		<li id="menu">
			<a href="/HanbitGroupware/Email?type=getEmailList&email_addr=${info.email_addr}" id="menu_drop">E-mail</a>
			<div id="drop_content">
				<a href="#">전체메일</a>
				<a href="/HanbitGroupware/Email?type=getEmailList">받은메일함</a>
				<a href="#">보낸메일함</a>
				<a href="#">내게쓴메일함</a>
				<a href="#">스팸메일함</a>
			</div>
		</li>
		<li id="menu">
			<a href="/HanbitGroupware/Schedule?type=personal&id=${info.id}" id="menu_drop">Schedule</a>
			<div id="drop_content">
				<a href="/HanbitGroupware/Schedule?type=personal&id=${info.id}">개인일정</a>
				<a href="#">출장</a>
				<a href="/HanbitGroupware/Schedule?type=vacation">연차</a>
			</div>
		</li>
		<li id="menu">
			<a href="#board" id="menu_drop">Board</a>
			<div id="drop_content">
				<a href="/HanbitGroupware/BoardController?type=boardList&board_type=공지">공지사항</a>
				<a href="/HanbitGroupware/BoardController?type=boardList&board_type=자유">자유게시판</a>
			</div>
		</li>
		<li id="menu">
			<a href="#support" id="menu_drop">업무지원</a>
			<div id="drop_content">

			<a href="/HanbitGroupware/public?type=d_list">업무자료실</a>
				<a href="/HanbitGroupware/public?type=p_list">공용문서함</a>
				<a href="/HanbitGroupware/Support?type=employee_list">임직원정보</a>
			</div>
		</li>
		<li id="menu">
			<a href="#s_em" id="menu_drop">환경설정</a>
			<div id="drop_content">
				<a href="/HanbitGroupware/s_em?type=setting_em&id=${info.id}">개인정보</a>
			</div>
		</li>
	</ul>
	</div>
</body>
</html>