<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Calendar calendar = Calendar.getInstance();
	//calendar.set(2017, 10, 30);
	
	Date day = calendar.getTime();
	SimpleDateFormat sdf1, sdf2, sdf3, sdf4;
	
	sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	sdf2 = new SimpleDateFormat("''yy년 MMM dd일 E요일");
	sdf3 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
	sdf4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss a");
	
	out.println(sdf1.format(day)+"<br>");
	out.println(sdf2.format(day)+"<br>");
	out.println(sdf3.format(day)+"<br>");
	out.println(sdf4.format(day)+"<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>SimpleDateFormat 테스트2</title>
</head>
<body>

</body>
</html>