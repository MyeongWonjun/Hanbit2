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
    padding: 14px 16px;
    text-decoration: none;
}

li:hover:not(.active), #menu:hover #menu_drop{
    background-color: #9ad3de;
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
</head>
<body>
	<h1 id="mainTop" align="center">
		HANBIT SYSTEM	
	</h1>
	<p align="right">
	<input id="btn" type="button" value="MY" />
	<input id="btn" type="button" value="LOGOUT" />
	<p>
	<div>
	<ul>
		<li><a href="#home">Home</a></li>
		<li id="menu">
			<a href="#email" id="menu_drop">E-mail</a>
			<div id="drop_content">
				<a href="#">전체메일</a>
				<a href="#">받은메일함</a>
				<a href="#">보낸메일함</a>
				<a href="#">내게쓴메일함</a>
				<a href="#">스팸메일함</a>
			</div>
		</li>
		<li id="menu">
			<a href="#schedule" id="menu_drop">Schedule</a>
			<div id="drop_content">
				<a href="#">전체일정</a>
				<a href="#">충장</a>
				<a href="#">연차</a>
			</div>
		</li>
		<li id="menu">
			<a href="#board" id="menu_drop">Board</a>
			<div id="drop_content">
				<a href="#">공지사항</a>
				<a href="#">자유게시판</a>
			</div>
		</li>
		<li id="menu">
			<a href="#download" id="menu_drop">Download</a>
			<div id="drop_content">
				<a href="#">업무자료실</a>
				<a href="#">공용문서함</a>
			</div>
		</li>
		<li id="menu">
			<a href="#support" id="menu_drop">업무지원</a>
			<div id="drop_content">
				<a href="#">임직원정보</a>
			</div>
		</li>
		<li id="menu">
			<a href="#configuration" id="menu_drop">환경설정</a>
			<div id="drop_content">
				<a href="#">개인정보</a>
			</div>
		</li>
	</ul>
	</div>
</body>
</html>


































