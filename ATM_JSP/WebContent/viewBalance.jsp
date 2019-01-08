<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="processLogin.jsp" />  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="bodie">
<%@ include file="header.jsp" %>
<%
Integer balance = (Integer) session.getAttribute("balance");
Integer DepositAmt = (Integer) session.getAttribute("DepositAmt");
%>

<div  align="center">
<h1 class="font1" >Transaction Successful</h1>
<br></br>
<h3 class = "fontt">Amount Deposited is <%= DepositAmt %></h3>
<h3 class = "fontt">Available Balance is <%= balance %></h3>
<br></br>
</div>



</body>
</html>

