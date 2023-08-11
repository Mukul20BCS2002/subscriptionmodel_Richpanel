<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="signUpBean" class = "bean.signUpBean"></jsp:useBean>
<jsp:setProperty property="*" name="signUpBean"/>
<jsp:useBean id="signUpDao" class = "dao.signUpDao"></jsp:useBean>
<%
String msg = signUpDao.signAdmin(signUpBean);
if(msg.equals("valid"))
	response.sendRedirect("login.jsp");
%>
</body>
</html>