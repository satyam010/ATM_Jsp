<%@page import="dao.LoginDAO"%>
<%@page import="dao.LoginInfo"%>
<%

String userName = request.getParameter("userName");
String password = request.getParameter("password");

int balance = 0;

if(LoginDAO.isUserValid(new LoginInfo(userName,password)))
{
	
	session.setAttribute("userName",userName);	
	session.setAttribute("password",password);	
	session.setMaxInactiveInterval(200); 
	balance = LoginDAO.getBalance(userName);
	session.setAttribute("balance",balance);
	response.sendRedirect("home.jsp"); 
}
else 
{
	response.sendRedirect("loginFailed.jsp"); 
}

%>
