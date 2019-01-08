<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="stylee.css">
</head>
<body >
<%@ include file="header.jsp" %>

    <form class="register-form" action="processDeposit.jsp" method="post" >
  <div class="login-page">
  <div class="form">
    
	 <input type="text" id="DepositAmt" name="DepositAmt" placeholder="Enter Amount to be Deposited" class="searchTextField"/>
     <button>Submit</button>

    
  </div>
</div>
</form>

</body>
</html>