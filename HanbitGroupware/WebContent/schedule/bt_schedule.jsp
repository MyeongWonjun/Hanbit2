<%@page import="com.hanbit.vo.VO_employees"%>
<%@page import="com.hanbit.vo.VO_schedule"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<VO_schedule> list =(List<VO_schedule>)request.getAttribute("list"); 
	request.setCharacterEncoding("utf-8");

	//Calender 클래스는 추상 클래스 이므로 객체생성이 되지 않는다.
	//따라서 getInstance() 메서드를 이용하여 하위클래스의 객체를 생성하여 리턴한다.
	//하위 클래스는 플랫폼의 나라 언어에 맞는 것을 자동으로 리턴해 줍니다.

	//칼렌더 객체 생성
	Calendar cal = Calendar.getInstance();

	//오늘 날짜 구하기
	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH) + 1;
	//월은 0부터 시작하므로 1월 표시를 위해 1을 더해 줍니다.
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);

	//클라이언트가 선택하여 넘어온 날짜
	String strYear = request.getParameter("year");
	String strMonth = request.getParameter("month");

	//표시할 달력의 년,월
	int year = nowYear;
	int month = nowMonth;

	if (strYear != null) {// 값이 있으면
		year = Integer.parseInt(strYear);//클라이언트가 선택한 값을 입력
	}
	if (strMonth != null) {// 값이 있으면
		month = Integer.parseInt(strMonth);//클라이언트가 선택한 값을 입력
	}

	//전월 이동을 구하기
	int preYear = year, preMonth = month - 1;
	if (preMonth < 1) {//1월 전월은 작년 12월 이니깐...
		preYear = year - 1;
		preMonth = 12;
	}

	//다음달 구하기
	int nextYear = year, nextMonth = month + 1;
	if (nextMonth > 12) {//12월 다음달은 내년 1월 이므로...
		nextYear = year + 1;
		nextMonth = 1;
	}

	//표시할 달력 세팅
	cal.set(year, month - 1, 1);//년,월,일
	int startDay = 1;//달의 첫 날
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

	//매년 해당월의 1일 구하기
	int week = cal.get(Calendar.DAY_OF_WEEK);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일정</title>
<STYLE type="text/css">
.tab_vertical>li {
	display: block;
	color: #ffffff;
	text-align: center;
	font-size: 15px;
	padding: 10px 10px;
	text-decoration: none;
	text-align: center;
	width: 200px;
}

.tab-title:HOVER {
	background-color: #9ad3de;
	width: 200px;
}
body {
	font-size: 12pt;
}

td {
	font-size: 12pt;
}
</STYLE>
</head>
<body>
	<table align="center">
		<thead>
			<tr>
				<th colspan="2" width="1280" height="200"><jsp:include
						page="../home/top_menu.jsp"></jsp:include></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="200px" valign="top">
					<h2 align="center" style="color:#89bdd3">스케쥴</h2>
					<ul class="tab_vertical">
						<li class="tab-title"><a href="/HanbitGroupware/Schedule?type=personal&id=${info.id}">개인일정</a></li>
						<li class="tab-title" style="background-color: #9ad3de;"><a href="/HanbitGroupware/Schedule?type=bt">출장</a></li>
						<li class="tab-title"><a href="/HanbitGroupware/Schedule?type=vacation">연차</a></li>
					</ul>
				</td>
				<td><table align="center" width="800" height="50"
						cellpadding="2" cellspacing="1">
						<tr>
							<td align="center"><a
 								href="/HanbitGroupware/Schedule?type=bt&year=<%=preYear%>&month=<%=preMonth%>">◀</a>
 								<b>&nbsp;<%=year%>년&nbsp;&nbsp;<%=month%>월
 							</b> <a href="/HanbitGroupware/Schedule?type=bt&year=<%=nextYear%>&month=<%=nextMonth%>">▶</a>
 							</td>
						</tr>
					</table> <!-- 달력표시 -->
					<table align="center" width="800" cellpadding="0" cellspacing="1"
						bgcolor="#89bdd3">
						<tr>
							<td bgcolor="#89bdd3" align="center"><font color="red">일</font></td>
							<td bgcolor="#89bdd3" align="center">월</td>
							<td bgcolor="#89bdd3" align="center">화</td>
							<td bgcolor="#89bdd3" align="center">수</td>
							<td bgcolor="#89bdd3" align="center">목</td>
							<td bgcolor="#89bdd3" align="center">금</td>
							<td bgcolor="#89bdd3" align="center"><font color="blue">토</font>
							</td>
						</tr>
						<%
							//한주가 지나면 줄바꿈을 할 것이다.
							int newLine = 0;
							out.print("<tr height='70'>");
							for (int i = 1; i < week; i++) {
								out.print("<td bgcolor='#ffffff'>&nbsp;</td>");
								newLine++;
							}
							schedule:
							for (int i = startDay; i <= endDay; i++) {//1일 부터 말일까지 반복
								String fontColor = (newLine == 0) ? "red" : (newLine == 6) ? "blue" : "black";
								String bgColor = (nowYear == year) && (nowMonth == month) && (nowDay == i) ? "#e6e6e6" : "#fff";//오늘날짜음영
								String content = null;
								for(VO_schedule k: list){
									int sd_year = Integer.parseInt((k.getStart_date().substring(0, 4)));
									int sd_month = Integer.parseInt((k.getStart_date().substring(5, 7)));
									int sd_day = Integer.parseInt((k.getStart_date().substring(8, 10)));
									
									if((sd_year == year) && (sd_month == month) && (sd_day == i)){
										bgColor="#5CD1E5";
										content=k.getName()+"<br> ~"+k.getEnd_date().substring(0, 10);
										out.print("<td align='center' bgcolor='" + bgColor + "' width='120'><font color='" + fontColor + "'>" + i
													+"<br>"+ content+"</font></td>");
										newLine++;
										if (newLine == 7 && i != endDay) {//7일째거나 말일이면 달력 줄바꿈이 일어난다.
											out.print("</tr><tr height='70'>");
											newLine = 0;
										}
										continue schedule;
									}
								}
								
								out.print("<td align='center' bgcolor='" + bgColor + "'><font color='" + fontColor + "'>" + i
										+ "</font></td>");
			
								newLine++;
								if (newLine == 7 && i != endDay) {//7일째거나 말일이면 달력 줄바꿈이 일어난다.
									out.print("</tr><tr height='70'>");
									newLine = 0;
								}
							} //3항 연산자로 for문으로 요일별 색상을 정한다. 

							while (newLine > 0 && newLine < 7) {//마지막날 이후 달력 채우기
								out.print("<td bgcolor='#ffffff'>&nbsp;</td>");
								newLine++;
							}
							out.print("</tr>");
						%>
					</table> <br /> <br /> <br /></td>
			</tr>
		</tbody>
	</table>
</body>
</html>