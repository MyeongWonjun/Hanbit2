<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

li a, .email_drop {
    display: block;
    color: #ffffff;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li:hover:not(.active), .email:hover .email_drop{
    background-color: #9ad3de;
}

li a.active {
    color: white;
    background-color: #4CAF50;
}

.drop_content {
    display: none;
    position: absolute;
    background-color: #e3e3e3;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.drop_content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.drop_content a:hover {background-color: #c9c9c9}

.email:hover .drop_content {
    display: block;
}


</style>
</head>
<body>
	<h2 id="mainTop">한 빛 그 룹 웨 어</h2>
	<ul>
		<li><a href="#home">Home</a></li>
		<li class="email">
			<a href="#email" class="email_drop">E-mail</a>
			<div class="drop_content">
				<a href="#">전체메일</a>
				<a href="#">받은메일함</a>
				<a href="#">보낸메일함</a>
				<a href="#">내게쓴메일함</a>
				<a href="#">스팸메일함</a>
			</div>
		</li>
		<li>
			<a href="#schedule">Schedule</a>
			<div class="drop_content">
				<a href="#"></a>
			</div>
		</li>
		<li>
			<a href="#board">Board</a>
		</li>
		<li><a href="#download">Download</a></li>
		<li><a href="#support">업무지원</a></li>
		<li><a href="#configuration">환경설정</a></li>
	</ul>
	<h3>Dropdown Menu inside a Navigation Bar</h3>
	<p>Hover over the "Dropdown" link to see the dropdown menu.</p>
</body>
</html>




<!-- 
<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li class="dropdown">
    <a href="#" class="dropbtn">Dropdown</a>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </li>
</ul>

<h3>Dropdown Menu inside a Navigation Bar</h3>
<p>Hover over the "Dropdown" link to see the dropdown menu.</p>

 -->