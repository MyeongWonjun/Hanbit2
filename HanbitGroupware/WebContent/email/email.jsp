<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#btn1 input {
	width: 100px;
	height: 50px;
	margin: 20px;
	color:white;
	background-color: #6ebcfa;
	font-family:Helvetica;
	font-size:12px;
	font-weight: bolder;
	text-align:center;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}
#btn1{
	margin-left: 8px;
}
#btn2 input {
	width: 270px;
	height: 100px;
	margin-left: 15px;
	background-color: white;
	text-transform: capitalize;
	font-weight: bolder;
	text-align: left;
	font-size: 15px;
	border-bottom-color: white;
}
#btn2{
	margin-top: 10px;
}
#text input{
	margin-left: 50px;
	font-weight:bolder;
	color: silver;
	font-size: 20px;
	border-radius: 7px;
}

#btn3 input{
	width: 50px;
	height: 25px;
	color:white;
	background-color: #6ebcfa;
	font-family:Helvetica;
	font-size:12px;
	font-weight: bolder;
	text-align:center;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

</style>
</head>
<body>

<jsp:include page="../home/top_menu.jsp"/>

<span id="btn1">
	<input type="button" value="메일쓰기"/>
	<input type="button" value="내게쓰기"/>
</span>

<!-- <span>
	<img alt="img2" src="../img/img2.png" style="margin-left: 100px; " >
</span> -->

<span id="text">
	<input type="text" value="search.."/>
</span>

<span id="btn3">
	<input type="button" value="검색"/>
</span>

</br>

<div id="btn2" style="background-color: yellow;">
	<input type="button" value="전체메일">
	
	<input type="button" value="받은메일함">
	
	<input type="button" value="보낸메일함">
	
	<input type="button" value="내게쓴메일함">
	
	<input type="button" value="스팸메일함">
</div>


</body>
</html>





































