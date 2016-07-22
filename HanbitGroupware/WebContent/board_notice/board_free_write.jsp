<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bbs table {
	width: 1080px;
	margin-left: 10px;
	border: 1px solid #e7e7e7;
	border-collapse: collapse;
	font-size: 14px;
}

#bbs table caption {
	color: #89bdd3;
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

#bbs table th {
	background-color: #89bdd3;
	color: white;
	text-align: center;
	border: 1px solid #e7e7e7;
	padding: 4px 10px;
}

#bbs table td {
	text-align: left;
	border: 1px solid #e7e7e7;
	padding: 4px 10px;
}

.no {
	width: 15%
}

.subject {
	width: 30%
}

.writer {
	width: 20%
}

.reg {
	width: 20%
}

.hit {
	width: 15%
}

.title {
	background: lightsteelblue
}

.odd {
	background: silver
}
</style>
<script type="text/javascript">
	function sendData() {
		/* for(var i=0 ; i<document.forms[0].elements.length ; i++){
			if(document.forms[0].elements[i].value == ""){
				if(i==1) continue;
				alert(document.forms[0].elements[i].name+
						"를 입력하세요");
				document.forms[0].elements[i].focus();
				return;//수행 중단
			}
		} */
		document.forms[0].submit();
	}
	function list_go() {
		location.href = "/HanbitGroupware/BoardController?type=boardList&board_type=${board_type}";
	}
</script>


<script type="text/javascript"
	src="/HanbitGroupware/ckeditor/ckeditor.js">
	CKEDITOR.replace('content', {});
	CKEDITOR.instances.content.getData();
</script>


</head>
<body>
	<table border="1" align="center">
	
		<thead>
			<tr>
				<th colspan="2" width="1280" height="200"><jsp:include
						page="../home/top_menu.jsp"></jsp:include></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px" valign="top">
					<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</h2>
					<ul class="tab_vertical" d>
						<li class="tab-title"><a href="/HanbitGroupware/BoardController?type=boardList&board_type=공지사항">공지사항</a></li>
						<li class="tab-title"><a href="/HanbitGroupware/BoardController?type=boardList&board_type=자유게시판">자유게시판</a></li>
					</ul>
				</td>
				<td>
					<div id="bbs">
						<form action="/HanbitGroupware/BoardController?type=boardWriteOK"
							method="post" encType="multipart/form-data">
							<table summary="게시판 글쓰기">
								<caption>${board_type} 글쓰기</caption>
								<tbody>
									<tr>
										<th>제목</th>
										<td><input type="text" name="subject" size="45" /></td>
									</tr>
									<tr>
										<th>이름</th>
										<td>${info.name }(${info.id })<input type="hidden"
											name="name" value="${info.name }(${info.id })" size="12" /></td>
									</tr>
									<tr>
										<th>내용</th>
										<td><textarea class="ckeditor" id="content"
												name="content" cols="50" rows="8"></textarea> <!-- <input type="hidden" name="content2" CKEDITOR.instances.content.getData()> -->
										</td>


									</tr>
									<tr>
										<th>첨부파일</th>
										<td><input type="file" name="board_file" /></td>
									</tr>

								</tbody>
								<tfoot align="center">
									<tr>
										<td colspan="2">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp; 
											<input type="button" value="보내기"onclick="sendData()" /> 
											<input type="reset" value="다시쓰기" /> 
											<input type="button" value="목록" onclick="list_go()" /> 
											<input type="hidden" name="chk" value="chk" /> 
											<input type="hidden" name="board_type" value="${board_type }" />
										</td>
									</tr>
								</tfoot>
							</table>
						</form>
					</div>

				</td>
			</tr>
		</tbody>
	</table>

</body>
</html>
