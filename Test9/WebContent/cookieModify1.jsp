<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String name=request.getParameter("cname");
	String value=request.getParameter("cvalue");
	Cookie cookie;
	if(value!=null && name!=null && !name.equals("")){
		cookie = new Cookie(name,value);		
	}else{
		cookie = new Cookie("name", "홍길동");
	}
	cookie.setMaxAge(600);
	response.addCookie(cookie);
	response.sendRedirect("cookieTest2_2.jsp");
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