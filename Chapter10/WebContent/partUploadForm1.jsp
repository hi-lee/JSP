<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>단일 파일 업로드 테스트</h1>
<form action="PartUploadPro1" method="post" enctype="multipart/form-data">
	<label for="writer">작성자 : </label><input type="text" name="writer" id="writer"><br>
	<label for="partFile1">업로드 파일 : </label><input type="file" name="partFile1" id="partFiel1"><br>
	<input type="submit" value="단일 업로드"/>
</form>
</body>
</html>