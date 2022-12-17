<%@ page contentType="text/html;charset=UTF-8" language="java"
         isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.mycom.myapp.book.BookDAO,com.mycom.myapp.book.BookVO"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>본문 내용 페이지</title>
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

<div class="box1">본문 내용 페이지</div>
<img src ='../../img/book.jpg' height="250">
<form:form modelAttribute="u" method="post" action="../editok">
  <form:hidden path="seq" />
  <table id="edit" class="inline">
    <tr>
      <td>Title:</td>
      <td><form:input path="title" /></td>
    </tr>
    <tr>
      <td>Writer:</td>
      <td><form:input path="writer" /></td>
    </tr>
    <tr>
      <td>Content:</td>
      <td><form:textarea cols="50" rows="5" path="content" /></td>
    </tr>
    <tr>
      <td>Category:</td>
      <td>
        <form:input path="category" />
      </td>
    </tr>
    <tr>
      <td>Price:</td>
      <td><form:input path="price" />
      </td>
    </tr>
    <tr>
      <td>Sell Date:</td>
      <td><form:input path="selldate" />
      </td>
    </tr>
    <tr>
      <td>Score</td>
      <td>
        <form:input path="score" />
      </td>
    </tr>
  </table>
  <tr>
    <td><input type="button" value="Go Back" onclick="history.back()" /></td>
  </tr>
</form:form>

</body>
</html>