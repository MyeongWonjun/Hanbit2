<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#btn1 input {
	width: 100px;
	height: 50px;
	margin: 10px;
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

#btn2 input {
	width: 270px;
	height: 100px;
	background-color: white;
	text-transform: capitalize;
	font-weight: bolder;
	text-align: left;
	font-size: 15px;
	border-bottom-color: white;
}
#btn4 input{
	width: 80px;
	height: 25px;
	margin-left: 5px;
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
#text input{
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
	position: relative;
	top: -3px;
}
#chk1 input {
	width: 20px;
	height: 20px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	position: relative;
	top: 6px;
}
#btn4 span{
	position: relative;
	right: 28px;
}

#list{
	width: 15px;
	height: 15px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

</style>
</head>
<body>

<table border="1" align="center">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td width="200px">
            	<span id="btn1">
					<input type="button" value="메일쓰기"/>
					<input type="button" value="내게쓰기"/>
				</span>
				<div id="btn2">
					<input type="button" value="전체메일"/>
					<br/>
					<input type="button" value="받은메일함"/>
					<br/>
					<input type="button" value="보낸메일함"/>
					<br/>
					<input type="button" value="내게쓴메일함"/>
					<br/>
					<input type="button" value="스팸메일함"/>
				</div>
            </td>
            <td  style="vertical-align: top;" >
            	<table border="1">
            	<thead>
            		<tr>
            			<th colspan="2" width="995px" align="left">
            				<p>
            				<span id="text">
								<input type="text" value="search.."/>
							</span>
							<span id="btn3">
								<input type="button" value="검색"/>
							</span>
							<p>
							<div>
								<span id="chk1">
									<input type="checkbox" id="chk_all"/>
								</span>
								<sapn id="btn4">
									전체선택
									<input type="button" value="삭제"/>
									<input type="button" value="답장"/>
									<input type="button" value="전체답장"/>
								<hr/>
								</span>
							</div>
            			</th>
            		</tr>
            		</thead>
            		<tbody>
            			<table>
            				<tbody>
            					<c:forEach var="k" items="${list}">
            					<tr>
            						<td width="25px">
            							<input id="list" type="checkbox"/>
            						<hr/></td>
            						<td width="175px">${k.sender_addr}<hr/></td>
            						<td width="570px">${k.subject}<hr/></td>
            						<td width="100px" align="right">${k.regdate.substring(0,16)}<hr/></td>
            						<td width="100px" align="right">${k.email_file}<hr/></td>
            					</tr>
            					</c:forEach>		
            				</tbody>
            				<tfoot>
            					<!-- 페이징기법 -->
            				</tfoot>
            			</table>
            		</tbody>
            	</table>
			</td>
         </tr>
      </tbody>
   </table>
</br>
</body>
</html>





































