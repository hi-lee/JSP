<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="Filecheck1" action="fileCheck.jsp" method="post">
	<input type="hidden" name="name" value="<%=request.getAttribute("name") %>">
	<input type="hidden" name="subject" value="<%=request.getAttribute("subject")%>">	
	<input type="hidden" name="filename1" value="<%=request.getAttribute("filename1")%>">
	<input type="hidden" name="filename2" value="<%=request.getAttribute("filename2")%>">
	<input type="hidden" name="origfilename1" value="<%=request.getAttribute("origfilename1")%>">
	<input type="hidden" name="origfilename2" value="<%=request.getAttribute("origfilename2")%>">
</form>
<a href="#" onclick="javascript:Filecheck1.submit()">업로드 확인 및 다운로드 페이지 이동</a>
</body>
</html>