<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.RopeLines {
	width: 50px;
	height: 1px;
	background-color: #fff;
}

.Rope {
	width: 52px;
	height: 167px;
	background-color: #dfdfdf;
}

.LOGIN, .gw {
	font-family: Helvetica;
	font-size: 18px;
	font-weight: bold;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, .15);
}

.Lock {
	width: 20px;
	height: 22px;
	background-color: #fff;
	-webkit-box-shadow: 0 1px rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 1px rgba(0, 0, 0, .15);
	box-shadow: 0 1px rgba(0, 0, 0, .15);
}

.Dots {
	width: 7px;
	height: 7px;
	-webkit-border-radius: 4px 3px 3px 4px/3px 3px 4px 4px;
	-moz-border-radius: 4px 3px 3px 4px/3px 3px 4px 4px;
	border-radius: 4px 3px 3px 4px/3px 3px 4px 4px;
	background-color: #fff;
	-webkit-box-shadow: 0 1px rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 1px rgba(0, 0, 0, .15);
	box-shadow: 0 1px rgba(0, 0, 0, .15);
}

.Field {
	width: 280px;
	height: 40px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: rgba(198, 224, 112, 0);
	-webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, .28);
	-moz-box-shadow: inset 0 0 3px rgba(0, 0, 0, .28);
	box-shadow: inset 0 0 3px rgba(0, 0, 0, .28);
	border: solid 1px rgba(242, 242, 242, .3);
}

#username {
	font-family: Helvetica;
	font-size: 14px;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, .15);
}

.Person {
	width: 20px;
	height: 22px;
	background-color: #fff;
	-webkit-box-shadow: 0 1px rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 1px rgba(0, 0, 0, .15);
	box-shadow: 0 1px rgba(0, 0, 0, .15);
}

.Field {
	width: 280px;
	height: 40px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: rgba(255, 255, 255, 0);
	-webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, .28);
	-moz-box-shadow: inset 0 0 3px rgba(0, 0, 0, .28);
	box-shadow: inset 0 0 3px rgba(0, 0, 0, .28);
	border: solid 1px rgba(242, 242, 242, .3);
}

.SignIn {
	font-family: Helvetica;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
}

.RoundedRectangle {
	width: 280px;
	height: 40px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: #91c46c;
	-webkit-box-shadow: 0 2px 2px rgba(0, 0, 0, .09), inset 0 1px #c8e5b3;
	-moz-box-shadow: 0 2px 2px rgba(0, 0, 0, .09), inset 0 1px #c8e5b3;
	box-shadow: 0 2px 2px rgba(0, 0, 0, .09), inset 0 1px #c8e5b3;
	border: solid 1px #73a84c;
}

.LoginBackground {
	width: 370px;
	height: 307px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: rgba(255, 255, 255, .2);
	-webkit-box-shadow: 0 4px 5px rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 4px 5px rgba(0, 0, 0, .1);
	box-shadow: 0 4px 5px rgba(0, 0, 0, .1);
	border: solid 1px rgba(255, 255, 255, .4);
}

.back {
	width: 1600px;
	height: 775px;
	background-color: silver;
}
</style>
</head>
<body>
	<div class="back" style="position: absolute; top: 0; left: 0;">
		<div class="LoginBackground" align="center"style="vertical-align: middle; position: absolute; margin-left: 37%; margin-top: 11%">
			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div>&nbsp;</div>
			<div class="gw">한 빛 그 룹 웨 어</div>
			<br/>
			<div class="LOGIN">LOGIN</div>
			<div>&nbsp;</div>
			<input type="text" class="Field" value="username"style="color: #fff;"><br />
			<input type="text"class="Field" value="password" style="color: #fff;" /><br />
			<input class="RoundedRectangle"type="submit" value="Sign In" style="font-family: Helvetica; font-size: 14px; font-weight: bold; color: #fff;"/>

		</div>
	</div>

</body>
</html>




































