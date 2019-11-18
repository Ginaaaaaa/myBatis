<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/edit2.do" method="post">
id : <input type="text" name="id" id="id" value="${vo.id}"><br>
password : <input type="text" name="pw" id="pw" value="${vo.pw}"><br>
name : <input type="text" name="name" id="name" value="${vo.name}"><br>
phone : <input type="text" name="phone" id="phone" value="${vo.phone}"><br>
<input type="submit" value="수정">
</form>
</body>
</html>
