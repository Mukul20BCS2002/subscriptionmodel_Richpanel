<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" type = "text/css" href="signUp.css">
</head>
<body>
<div class="signup-container">
  <h2>Login to your account</h2>
  <form class="signup-form" action="loginAction.jsp">
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="remember-me">
      <input type="checkbox" id="remember" name="remember">
      <label for="remember">Remember Me</label>
    </div>
    <button class="signup-button" type="submit">Login</button>
  </form>
  <p class="already-have-account">New to MyApp? <a href="index.jsp">Sign Up</a></p>
</div>


</body>
</html>