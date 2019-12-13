<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String[] name;
    String[] value;
    String cookie = request.getHeader("Cookie");
    
    	if(cookie!=null){
    		Cookie cookies[]=request.getCookies();
    		name=new String[cookies.length];
    		value=new String[cookies.length];
    		for(int i=0; i<cookies.length; i++){
    			name[i]=cookies[i].getName();
    			value[i]=cookies[i].getValue();
    		}  	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
	<h2>cookie=<%=cookie %></h2>
	<% for(int i=0; i<cookies.length; i++){ %>
	<h2>쿠키 이름 = <%=name[i] %></h2>
	<h2>쿠키 값 =<%=value[i] %></h2><br>
	<%} %>
	
	<form name=f method="get">
		쿠키 이름 : <select name="cname"> 
			<option value=""></option>
			<% for(int i=0; i<cookies.length; i++){
				if(!cookies[i].getName().equals("JSESSIONID")){%>
				<option value='<%=cookies[i].getName() %>'><%=cookies[i].getName() %></option>
			<% }}}%>
				</select><br>				
		쿠키 값 : <input type="text" name=cvalue/><br>
	</form>
		<input type="button" value="쿠키 값 수정하기 " onclick="f.action='cookieModify1.jsp';f.submit();"/>
		<a href="javascript:f.action='cookieModify1.jsp';f.submit();">쿠키 값 수정하기</a>
		<a href="javascript:f.action='cookieDel1.jsp';f.submit();">쿠키 삭제하기</a>
	<form method="get" name="addform">
		쿠키 이름 : <input type="text" name="cname">
		쿠키 값 : <input type="text" name="cvalue">
	</form>
		<a href="javascript:addform.action='cookieAdd.jsp';addform.submit();">쿠키 추가하기</a>
</body>
</html>