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
				<!-- ����Ŭ �ʵ���� �ݵ�� �빮�ڷ� ǥ���� �� !!! -->
					<td>${list.ID}</td>
					<td>${list.NAME}</td>
					<td>${list.PW}</td>
					<td>${list.PHONE}</td>
					<td><a href="edit.do?id=${list.id}"><input type="button" name="edit" value="����"></a>
					<a href="delete.do?id=${list.id}"><input
							type="submit" name="delete" value="����"></a>
					<td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="insert.do"><input type="button" name="add" value="�߰�"></a>
	<br>
	<br>

</body>
</html>
