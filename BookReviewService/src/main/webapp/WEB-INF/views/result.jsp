<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
body {
	background-color: #E2F6D4;
	color: black;
	font-size: 20px;
	text-align: center;
}

#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'deleteok/' + id;
	}
</script>
</head>
<body>
	<h1>검색 결과</h1>
	<div>
		<a href="list">BACK</a>
	</div>


	<table id="list" width="90%">
		<tr>
			<th>번호</th>
			<th>장르</th>
			<th>제목</th>
			<th>작성자</th>
			<th>평가</th>
			<th>작성일</th>
			<th>수정</th>
			<th>자세히보기</th>
			<th>삭제</th>
		</tr>

		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.seq}</td>
				<td>${u.category}</td>
				<td>${u.title}</td>
				<td>${u.writer}</td>
				<td>${u.score}</td>
				<td>${u.regdate}</td>
				<td><a href="editform/${u.seq}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>

	<br />
	<a href="../login/logout">Log Out</a>
</body>
</html>
