<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Subscription Plans</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #004e96;
  }
  .container {
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    text-align: center;
    background-color: #ffffff;
    color: #004e96;
    border-radius: 5px;
    box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
    height: 100%;
  }

</style>
</head>
<body>
<div class ="container">
  <h1>Subscription Plans</h1>
  <stripe-pricing-table pricing-table-id="prctbl_1NddOJSIrZP7vCNjI6GZ1UEG"
    publishable-key="pk_test_51NdciySIrZP7vCNj0TxxJUz2btTCyQsstCW59D7M8eRJ1sZetZsbgDIh46sqflOY0kYfUXCgPjJaAuAoFVnipYXg00UYensbMU">
  </stripe-pricing-table>
  
</div>
<script async src="https://js.stripe.com/v3/pricing-table.js"></script>
</body>
</html>