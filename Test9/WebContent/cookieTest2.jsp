<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String name = "";
	String value = "";
	String cookie = request.getHeader("Cookie");

	if (cookie != null) {
		Cookie cookies[] = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			//if(cookies[i].getName().equals("name")){
			//name = cookies[i].getName();
			//value = cookies[i].getValue();

			out.println("<h2>쿠키 이름 = " + cookies[i].getName() + "<h2>");
			out.println("<h2>쿠키 값 = " + cookies[i].getValue() + "<h2>");
				}
		}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
	  
<h2>cookie =<%=cookie %></h2>
<h2>쿠키 이름 = <%=name %></h2>
<h2>쿠키 값 = <%=value %></h2>

	<form action="cookieModify.jsp" name=f method="get">
	변경 값 : <input type="text" name=cvalue><br>
	<input type="submit" value="쿠키값 수정하기"/>
	<input type="button" value="쿠키 삭제하기" onclick="location.href='cookieDel.jsp'">
	</form>
	<a href="javascript:f.submit();">name 쿠키 값 수정하기</a>
	<a href="cookieDel.jsp">쿠키 삭제하기</a>
	
	<form action="cookieAdd.jsp" method="get">
		쿠키 이름 : <input type="text" name="name"/>
		쿠키 값 : <input type="text" name="value"/><br>	
	<a href="cookieAdd.jsp">쿠키 추가하기</a>
	</form>
</body>
</html>