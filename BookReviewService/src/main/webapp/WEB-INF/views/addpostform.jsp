<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>추가 페이지</title>
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
    table{
    	margin: auto;
    }
    
    table,
    tr{
      color: black;
    }
    td{
      border: 2px solid dimgray;
      margin: 3px 0;
      padding: 5px;
    }
    .inline{
      display:inline;
      width:200px;
      height: 50px;
    }

  </style>
</head>
<body>

<div class="box1">독서 정보 추가 페이지</div>
<img src ='../img/book.jpg' height="250">
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