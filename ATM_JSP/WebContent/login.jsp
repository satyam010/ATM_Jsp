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
		
		
  <form class="register-form" action="processLogin.jsp" method="post" >		
  <div class="login-page">
  <div class="form">
    
	 <input type="text" id="userName" name="userName" placeholder="UserName" class="searchTextField"/>
	 
	 <input type="password" id="password" name="password" placeholder="Password" class="searchTextField"/>
	 
     <button>login</button>
   
  </div>
</div>
</form>

</body>
</html>