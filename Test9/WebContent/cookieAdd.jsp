<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 	String name = request.getParameter("cname");
 	String value = request.getParameter("cvalue");
 	
 	if(name!=null && value!=null && !name.equals("")){
 		Cookie cookie = new Cookie(name, value);
 		response.addCookie(cookie);
 	} 	 	
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