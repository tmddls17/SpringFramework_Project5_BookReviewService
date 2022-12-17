<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPEhtml>
<html>
<head>
<meta charset="UTF-8">
<title>Book Review Service</title>
<style>
.box1{
      width:50%;
      border: 3px solid #BAE39F;
      padding:20px 20px;
      margin:auto;
      text-align: center;
      background-color: #BAE39F;
    }
body{
      background-color: #E2F6D4;
      color:black;
      font-size:20px;
      text-align: center;
    }
img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {
	background-color: blue;
	color: white;
	font-size: 15px
}
</style>
</head>
<body>
	<div class="box1">독서 경험을 공유하세요</div>
	<div style='width:100%; text-align:center; padding-top:100px'>
	<img src ='../img/libre.jpg' height="250">
	<form method ="post" action="loginOk">
	<div>
		<label>User ID: </label>
		<input type ='text'name='userid' />
	</div>
	<div>
		<label>Password: </label>
		<input type ='password'name='password' />
	</div>
	<button type='submit'>login
	</button>
	</form>
	<a href="adduser">회원 가입</a>
	</div>
</body>
</html>