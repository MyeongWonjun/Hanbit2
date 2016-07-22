<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
	String email_addr2 = request.getParameter("email_addr");
	session.setAttribute("email_addr2", email_addr2);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
a{
	text-decoration: none;
	color: #6ebcfa;
}
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
table tfoot ol.paging {
	    list-style:none;
}
	
table tfoot ol.paging li {
	    float:left;
	    margin-right:8px;
	}
	
table tfoot ol.paging li a {
	    display:block;
	    padding:3px 7px;
	    border:1px solid #00B3DC;
	    color:#2f313e;
	    font-weight:bold;
}
	
table tfoot ol.paging li a:hover {
	    background:#00B3DC;
	    color:white;
	    font-weight:bold;
}
	
.disable {
	    padding:3px 7px;
	    border:1px solid silver;
	    color:silver;
}
	
.now {
	   padding:3px 7px;
	    border:1px solid #ff4aa5;
	    background:#ff4aa5;
	    color:white;
	    font-weight:bold;
}

</style>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
	function write_go(f) {
		f.action="email/email_write.jsp?email_addr=<%=email_addr2%>";
		f.submit();
	}
	function write_goME(f) {
		f.action="email/email_writeME.jsp?email_addr=<%=email_addr2%>";
		f.submit();
	}
	function all_go(f) {
		f.action="/HanbitGroupware/Email?type=getAllEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function receive_go(f) {
		f.action="/HanbitGroupware/Email?type=getEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function send_go(f) {
		f.action="/HanbitGroupware/Email?type=getSendEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function me_go(f) {
		f.action="/HanbitGroupware/Email?type=getSendMEEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	function search_go(f) {
		f.action="/HanbitGroupware/Email?type=getSearchEmailList&email_addr=<%=email_addr2%>";
		f.submit();
	}
	$(function() {
	    //최상단 체크박스 클릭
	    $("#chk_all").click(function(){
	        //클릭되었으면
	        if($("#chk_all").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=chk]").prop("checked",true);
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=chk]").prop("checked",false);
	        }
	    })
	})
	function delete_go(f){
		var ck = confirm("삭제 하시겠습니까?");
		if(ck==true){
			f.action = "/HanbitGroupware/Email?type=getDelete&email_addr=<%=email_addr2%>";
			f.submit();
		}
	}
</script>
</head>
<body>

<form method="post">
<table align="center" border="1" style="position: relative; left: 8px">
      <thead>
         <tr>
            <th colspan="2" width="1280" height="200"><jsp:include page="../home/top_menu.jsp"></jsp:include></th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td width="200px">
            	<span id="btn1">
					<input type="button" value="메일쓰기" onclick="write_go(this.form)"/>
					<input type="button" value="내게쓰기" onclick="write_goME(this.form)"/>
				</span>
				<div id="btn2">
					<input type="button" value="전체메일" onclick="all_go(this.form)"/>
					<br/>
					<input type="button" value="받은메일함" onclick="receive_go(this.form)"/>
					<br/>
					<input type="button" value="보낸메일함" onclick="send_go(this.form)"/>
					<br/>
					<input type="button" value="내게쓴메일함" onclick="me_go(this.form)"/>
					<br/>
					<input type="button" value="스팸메일함"/>
				</div>
            </td>
            <td  style="vertical-align: top;" >
            	<table>
            	<thead>
            		<tr>
            			<th colspan="2" width="995px" align="left">
            				<p>
            				<span id="text">
								<input type="text" value="search.." name="search"/>
							</span>
							<span id="btn3">
								<input type="button" value="검색" onclick="search_go(this.form)"/>
							</span>
							<p>
							<div>
								<span id="chk1">
									<input type="checkbox" id="chk_all"/>
								</span>
								<sapn id="btn4">
									전체선택
									<input type="button" value="삭제" onclick="delete_go(this.form)"/>
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
            							<input class="list" type="checkbox" name="chk" value="${k.idx}"/>
            						<hr/></td>
            						<td width="225px">to : ${k.email_addr}<hr/></td>

            						<td width="460px"><a href="/HanbitGroupware/Email?type=email_oneList&idx=${k.idx}&email_addr=<%=email_addr2%>">${k.subject}</a><hr/></td>

            						<td width="150px" align="right">${k.regdate.substring(0,16)}<hr/></td>

            						<td width="115px" align="right">${k.real_file}<hr/></td>
            					</tr>
            					</c:forEach>		
            				</tbody>
            				<tfoot>
            					<!-- 페이징기법 -->
            					<td colspan="5">
                              <ol class="paging">
                                 <!--  이전버튼 은 beginPage가 pagePerBlock보다 작으면 비활성화 -->
                                 <c:choose>
                                    <c:when test="${pvo.beginPage < pvo.pagePerBlock}">
                                       <li class="disable">이전으로</li>
                                    </c:when>
                                    <c:otherwise>
                                       <li><a
                                          href="/HanbitGroupware/Email?type=getSendEmailList&email_addr=${info.email_addr}&cPage=${pvo.beginPage-pvo.pagePerBlock }">이전으로</a></li>
                                    </c:otherwise>
                                 </c:choose>

                                 <c:forEach var="k" begin="${pvo.beginPage}"
                                    end="${pvo.endPage}" step="1">
                                    <c:choose>
                                       <c:when test="${k==pvo.nowPage}">
                                          <li class="now">${k}</li>
                                       </c:when>
                                       <c:otherwise>
                                          <li><a
                                             href="/HanbitGroupware/Email?type=getSendEmailList&email_addr=${info.email_addr}&cPage=${k}">${k}</a></li>
                                       </c:otherwise>
                                    </c:choose>
                                 </c:forEach>
                                 <c:choose>
                                    <c:when test="${pvo.endPage>=pvo.totalPage}">
                                       <li class="disable">다음으로</li>
                                    </c:when>
                                    <c:otherwise>
                                       <li><a href="/HanbitGroupware/Email?type=getSendEmailList&email_addr=${info.email_addr}&cPage=${pvo.beginPage+pvo.pagePerBlock }">다음으로</a>
                                       </li>
                                    </c:otherwise>
                                 </c:choose>
                              </ol>
                           </td>
            				</tfoot>
            			</table>
            		</tbody>
            	</table>
			</td>
         </tr>
      </tbody>
   </table>
   </form>

</body>
</html>