<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/insert2.do" method="post">
id : <input type="text" name="id" id="id"><br>
password : <input type="text" name="pw" id="pw"><br>
name : <input type="text" name="name" id="name"><br>
phone : <input type="text" name="phone" id="phone"><br>
<input type="submit" value="제출">
</form>
</body>
</html>