<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="processLogin.jsp" />  
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
<%@ include file="header.jsp" %>
<%
String userName = (String)session.getAttribute("userName");
Integer balance = (Integer) session.getAttribute("balance");
char ch= userName.charAt(0);
String y = String.valueOf(ch);
y = y.toUpperCase();
y = y+userName.substring(1);
%>

<div align="center">

<h1 class ="hone">Dear <%= y %> , Welcome To SPP BANK</h1>


<br></br>

<button  class="button button1 " onclick="document.location.href='viewBalancee.jsp'"><b>BALANCE</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='Deposit.jsp'" ><b>DEPOSIT</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='WithDraw.jsp'"><b>WITHDRAW</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='editPassword.jsp'"><b>CHANGE PIN</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='viewStatement.jsp'"><b>MINI STATEMENT</b></button>

</div>

</body>
</html>

