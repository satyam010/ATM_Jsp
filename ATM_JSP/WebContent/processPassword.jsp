

<%@page import="dao.LoginDAO"%>
<%@page import="dao.LoginInfo"%>
<%
String userName = (String)session.getAttribute("userName");
String cpswd = request.getParameter("cpswd");
String npswd = request.getParameter("npswd");
String cnpswd = request.getParameter("cnpswd");
String password = (String)session.getAttribute("password");
session.setAttribute("cnpswd",cnpswd);	
	
if(cpswd.equals(password)&&npswd.equals(cnpswd))
{
	
    LoginDAO.updatePassword(userName,cnpswd);
    response.sendRedirect("checkPassword.jsp"); 
    
}
else
{
	response.sendRedirect("loginFailed.jsp"); 
}
%>
