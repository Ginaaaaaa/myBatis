<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.myDao"%>

<%
	myDao dao = new myDao();
	ArrayList<HashMap<String, String>> list = null;
	list = dao.getMember(null);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>

	<table>
		<tbody>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PASSWORD</th>
				<th>PHONE</th>
			</tr>
			<c:forEach var="list" items="<%=list%>">
				<tr allign="center">
				<!-- 오라클 필드명은 반드시 대문자로 표시할 것 !!! -->
					<td>${list.ID}</td>
					<td>${list.NAME}</td>
					<td>${list.PW}</td>
					<td>${list.PHONE}</td>
					<td><a href="edit.do?id=${list.id}"><input type="button" name="edit" value="수정"></a>
					<a href="delete.do?id=${list.id}"><input
							type="submit" name="delete" value="삭제"></a>
					<td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="insert.do"><input type="button" name="add" value="추가"></a>
	<br>
	<br>

</body>
</html>
