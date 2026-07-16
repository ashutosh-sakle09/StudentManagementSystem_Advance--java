<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<link rel="stylesheet" href="css/style.css">

</head>

<body class="bg-light">

<div class="container vh-100 d-flex justify-content-center align-items-center">

<div class="card shadow-lg border-0 rounded-4 p-4" style="width:430px;">

<div class="text-center mb-4">

<i class="bi bi-mortarboard-fill text-primary" style="font-size:55px;"></i>

<h2 class="mt-2 fw-bold">Student Registration</h2>

<p class="text-muted">Create your account</p>

</div>

<%
String error=request.getParameter("error");

if("email".equals(error)){
%>

<div class="alert alert-danger">

<i class="bi bi-exclamation-circle"></i>

Email already registered.

</div>

<%
}
%>

<form action="RegisterServlet" method="post">

<div class="mb-3">

<label class="form-label">

<i class="bi bi-person-fill"></i>

Full Name

</label>

<input
type="text"
name="name"
class="form-control form-control-lg"
placeholder="Enter your full name"
required>

</div>

<div class="mb-3">

<label class="form-label">

<i class="bi bi-envelope-fill"></i>

Email

</label>

<input
type="email"
name="email"
class="form-control form-control-lg"
placeholder="Enter your email"
required>

</div>

<div class="mb-4">

<label class="form-label">

<i class="bi bi-lock-fill"></i>

Password

</label>

<input
type="password"
name="password"
class="form-control form-control-lg"
placeholder="Create password"
required>

</div>

<div class="d-grid">

<button class="btn btn-primary btn-lg">

<i class="bi bi-person-plus-fill"></i>

Register

</button>

</div>

</form>

<div class="text-center mt-4">

Already have an account?

<a href="login.jsp" class="text-decoration-none fw-bold">

Login

</a>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>