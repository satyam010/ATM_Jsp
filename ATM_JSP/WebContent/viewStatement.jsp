<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.LoginDAO"%>
<%@page import="dao.mini"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Statements</title>
<link rel="stylesheet" href="style.css">
</head>
<body >
<%@ include file="header.jsp" %>
<%
String userName = (String)session.getAttribute("userName");
%>
<h1 align="center" class ="fontmini">Mini Statement</h1>
	<table align="center" class="productTable">
		<thead>
			<tr>
				<th>AMOUNT</th>
				<th>TYPE</th>
				<th>USERNAME</th>
				<th>BALANCE</th>
				<th>TRANSACTION DATE</th>
			</tr> 
		</thead>
		<%
			List<mini> productList = LoginDAO.getAllProducts(userName);
			for (mini p : productList) {
		%>
		<tr>
			<td><%=p.getAmount()+"  "%></td>
			<td><%=p.getType()+"  "%></td>
			<td><%=p.getUsername()+"  "%></td>
			<td><%= p.getAbalance()+"  "%></td>
			<td><%= p.getTdate()+"  "%></td>
		</tr>

		<%
}
%>
	</table>

</body>
</html>