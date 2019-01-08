

<%@page import="dao.LoginDAO"%>
<%@page import="dao.LoginInfo"%>
<%

int DepositAmt  = Integer.parseInt(request.getParameter("DepositAmt"));
String type = "DEPOSIT";
int balance = (Integer) session.getAttribute("balance");
String userName = (String)session.getAttribute("userName");
String tdate = (new java.util.Date()).toLocaleString();
balance = balance+DepositAmt;
session.setAttribute("DepositAmt",DepositAmt);
session.setAttribute("type",type);
session.setAttribute("userName",userName);
session.setAttribute("balance",balance);


    LoginDAO.addStatement(DepositAmt,type,userName,balance,tdate);
	LoginDAO.updateBalance(userName,balance);
	
	response.sendRedirect("viewBalance.jsp"); 

%>
