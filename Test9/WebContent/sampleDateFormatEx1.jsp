<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date today = new Date();
	SimpleDateFormat sdf1, sdf2, sdf3, sdf4, sdf5, sdf6, sdf7, sdf8, sdf9;
	
	sdf1 = new SimpleDateFormat("yyy-MM-dd");
	sdf2 = new SimpleDateFormat("''yy년 MMM dd일 E요일");
	sdf3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
	sdf4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");
	sdf5 = new SimpleDateFormat("오늘은 올 해의 D번째 날입니다.");
	sdf6 = new SimpleDateFormat("오늘은 올 해의 d번째 날입니다.");
	sdf7 = new SimpleDateFormat("오늘은 올 해의 w번째 주입니다.");
	sdf8 = new SimpleDateFormat("오늘은 이 달의 W번째 주입니다.");
	sdf9 = new SimpleDateFormat("오늘은 이 달의 F번째 E요일입니다.");
			
	out.println(sdf1.format(today)+"<br>");
	out.println(sdf2.format(today)+"<br>");
	out.println(sdf3.format(today)+"<br>");
	out.println(sdf4.format(today)+"<br>");
	out.println(sdf5.format(today)+"<br>");
	out.println(sdf6.format(today)+"<br>");
	out.println(sdf7.format(today)+"<br>");
	out.println(sdf8.format(today)+"<br>");
	out.println(sdf9.format(today)+"<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>