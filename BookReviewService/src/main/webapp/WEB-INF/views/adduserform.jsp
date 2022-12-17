<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User Form</title>
<style>
.box1 {
	width: 50%;
	border: 3px solid #BAE39F;
	padding: 20px 20px;
	margin: auto;
	text-align: center;
	background-color: #BAE39F;
}

body {
	background-color: #E2F6D4;
	color: black;
	font-size: 20px;
	text-align: center;
}

table {
	margin: auto;
}

table, tr {
	color: black;
}

td {
	border: 2px solid dimgray;
	margin: 3px 0;
	padding: 5px;
}

.inline {
	display: inline;
	width: 200px;
	height: 50px;
}
</style>
</head>
<body>

	<div class="box1">신규 가입</div>
	<img src ='../img/welcome.jpg' height="250">
	<form action="adduserok" method="post">
		<table id="edit">
			<tr>
				<td>아이디:</td>
				<td><input type="text" name="userid" /></td>
			</tr>
			<tr>
				<td>이름:</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="text" name="password"></input></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="Assign" /></td>
			</tr>
		</table>
		<input type="button" value="Cancel" onclick="history.back()" />
		
	</form>

</body>
</html>