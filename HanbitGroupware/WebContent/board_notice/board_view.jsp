<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bbs table {
	width: 700px;
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
	function modify_go(f){
		f.action = "/HanbitGroupware/BoardController?type=boardModify";
		f.submit();
	}
	function delete_go(f) {
		var ck = confirm("삭제하시겠습니까?");
		if (ck) {
			f.action="/HanbitGroupware/BoardController?type=boardDel";
		}else{
			f.action= "/HanbitGroupware/BoardController?type=boardList&board_type=자유";
		}
		f.submit();
	}
	function list_go() {
		location.href = "/HanbitGroupware/BoardController?type=boardList&board_type=자유";
		
	}
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
				<td width="200px">
					<h2 class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시판</h2>
					<ul class="tab_vertical" d>
						<li class="tab-title"><a href=#>공지사항</a></li>
						<li class="tab-title"><a href=#>자유게시판</a></li>
					</ul>

				</td>


				<td>


					<div id="bbs">
						<form method="post" >
							<table summary="게시판 글보기">
								<caption>게시판 글보기</caption>
								<tbody>
									<tr>
										<th>제목</th>
										<td>${vo.subject }</td>
									</tr>
									<tr>
										<th>이름</th>
										<td>${vo.name }</td>
									</tr>
									<tr>
										<th>내용</th>
										<td>${vo.content }</td>


									</tr>
									<tr>
										<th>첨부파일</th>
										<td><c:choose>
												<c:when test="${vo.board_file != null }">
													<a
														href="/Download/p_download.jsp?board_file=${vo.board_file }">${vo.board_file}</a>
												</c:when>

											</c:choose></td>
									</tr>

								</tbody>
								<tfoot align="center">
									<tr>
										<td colspan="2">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;&nbsp;&nbsp; 
											<input type="button" value="수정" onclick="modify_go(this.form)"/>
											<input type="button" value="삭제" onclick="delete_go(this.form)"/>
											<input type="button" value="목록" onclick="list_go()"/>
				   							<input type="hidden" name="b_idx" value="${vo.b_idx}" /> 
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
