<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#bbs table {
	    width:700px;
	    margin-left:10px;
	    border:1px solid #e7e7e7;
	    border-collapse:collapse;
	    font-size:14px;
	    
	}
	
	#bbs table caption {
		color:#89bdd3;
	    font-size:20px;
	    font-weight:bold;
	    margin-bottom:10px;
	}
	
	#bbs table th {
		background-color:#89bdd3;
		color:white;
	    text-align:center;
	    border:1px solid #e7e7e7;
	    padding:4px 10px;
	}
	
	#bbs table td {
	    text-align:left;
	    border:1px solid #e7e7e7;
	    padding:4px 10px;
	}
	
	.no {width:15%}
	.subject {width:30%}
	.writer {width:20%}
	.reg {width:20%}
	.hit {width:15%}
	.title{background:lightsteelblue}
	
	.odd {background:silver}
	
		
</style>
<script type="text/javascript">
	function sendData(){
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
		
		/* location.href="/HanbitGroupware/public?type=p_writeOK"; */
	}
	function list_go() {
		location.href="/HanbitGroupware/public?type=p_list";
	}
</script>
 <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>

<script>
	window.onload=function(){
 		CKEDITOR.replace('content',{
 		});
 		CKEDITOR.instances.content.getData();
 		
	}
</script>


</head>
<body>
	<div id="bbs">
	<form action="/HanbitGroupware/public?type=writeok" method="post" encType="multipart/form-data">
		<table summary="게시판 글쓰기">
			<caption>게시판 글쓰기</caption>
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" size="45"/></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="writer" size="12"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
					<textarea id="content" name="content" cols="50" rows="8"></textarea>
					<!-- <input type="hidden" name="content2" CKEDITOR.instances.content.getData()> -->
					</td>
					
					
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" name="file_name"/></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pwd" size="12"/></td>
				</tr>
				</tbody>
				<tfoot align="center">
				<tr>
					<td colspan="2">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;

						<input type="button" value="보내기" onclick="sendData()"/>
						<input type="reset" value="다시"/>
						<input type="button" value="목록" onclick="list_go()"/>
						<input type="hidden" name="chk" value="chk" />
					</td>
				</tr>
				</tfoot>
		</table>
	</form>
	</div>
</body>
</html>
