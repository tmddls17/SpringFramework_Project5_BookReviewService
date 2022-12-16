<%@ page contentType="text/html;charset=UTF-8" language="java"
	isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Add New Post</h1>
	<form action="addok" method="post">
		<table id="edit">
			<tr>
				<td>Title:</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>Writer:</td>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td>Category:</td>
				<td><select class="form-select" id="category" name="category">
						<option value="">선택</option>
						<option value="시집">시집</option>
						<option value="소설">소설</option>
						<option value="전공서적">전공서적</option>
						<option value="위인전">위인전</option>
						<option value="사전">사전</option>
						<option value="자서전">자서전</option>
				</select></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="checkbox" name="price" value="1만원 미만" checked />1만원 미만
					<input type="checkbox" name="price" value="1만~2만" />1만~2만
					<input type="checkbox" name="price" value="2만~3만" />2만~3만
					<input type="checkbox" name="price" value="3만원 이상" />3만원 이상
				</td>
			</tr>
			<tr>
				<td>Sell Date:</td>
				<td><input type="date" class="form-control" min='1980-01-01'
					max='2022-12-31' name="selldate">
				</td>
			</tr>
			<tr>
				<td>Score</td>
				<td>
				<input type="radio" name="score" value="1점" checked/>1점
				<input type="radio" name="score" value="2점" />2점
				<input type="radio" name="score" value="3점" />3점
				<input type="radio" name="score" value="4점" />4점
				<input type="radio" name="score" value="5점" />5점
				</td>
			</tr>
			<tr>
				<td><a href="list">View All Records</a></td>
				<td align="right"><input type="submit" value="Add Post" /></td>
			</tr>
		</table>
	</form>

</body>
</html>