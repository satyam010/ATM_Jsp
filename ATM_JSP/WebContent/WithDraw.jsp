<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="stylee.css">
</head>
<body class="bodie">
		<%@ include file="header.jsp" %>
  <form class="register-form" action="processWithdraw.jsp" method="post" >
  <div class="login-page">
  <div class="form">
        
	 <input type="text" id="WithdrawAmt" name="WithdrawAmt" placeholder="Enter Amount to be Withdrawn" class="searchTextField"/>
	 
     <button>Submit</button>
     
    
  </div>
</div>
</form>

</body>
</html>
