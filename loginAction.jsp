<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="loginAdminBean" class = "bean.loginBean"></jsp:useBean>
<jsp:setProperty property="*" name="loginAdminBean"/>
<jsp:useBean id="loginAdminDao" class = "dao.loginDao"></jsp:useBean>
<%
String msg = loginAdminDao.login(loginAdminBean);
if(msg.equals("valid"))
	response.sendRedirect("planSubs.jsp");
%>
</body>
</html>