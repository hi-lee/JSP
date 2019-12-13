<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie cookie;
	String value=request.getParameter("cvalue");
	if(value!=null){
		cookie=new Cookie("name",value);
	}else{
		cookie=new Cookie("name","홍길동");
	}
	response.addCookie(cookie);
	response.sendRedirect("cookieTest2.jsp");
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