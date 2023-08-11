<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
<link rel="stylesheet" type = "text/css" href="signUp.css">
</head>
<body>
<div class="signup-container">
  <h2>Create Account</h2>
  <form class="signup-form" action="signUpAction.jsp">
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" required>
    </div>
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
    <button class="signup-button" type="submit">Sign Up</button>
  </form>
  <p class="already-have-account">Already have an account? <a href="login.jsp">Log in</a></p>
</div>


</body>
</html>