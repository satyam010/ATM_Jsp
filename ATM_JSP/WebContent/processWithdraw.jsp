

<%@page import="dao.LoginDAO"%>
<%@page import="dao.LoginInfo"%>
<%

int WithdrawAmt  = Integer.parseInt(request.getParameter("WithdrawAmt"));
String type = "WITHDRAW";
int balance = (Integer) session.getAttribute("balance");
String userName = (String)session.getAttribute("userName");
String tdate = (new java.util.Date()).toLocaleString();
balance = balance-WithdrawAmt;
session.setAttribute("WithdrawAmt",WithdrawAmt);
session.setAttribute("type",type);
session.setAttribute("userName",userName);
session.setAttribute("balance",balance);

    LoginDAO.addStatement(WithdrawAmt,type,userName,balance,tdate);
	LoginDAO.updateBalance(userName,balance);
	
	response.sendRedirect("viewbalanc.jsp"); 

%>
