<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String user = (String) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

</head>

<body class="bg-light">

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark bg-primary shadow">

<div class="container">

<a class="navbar-brand fw-bold" href="#">

<i class="bi bi-mortarboard-fill"></i>

Student Management System

</a>

<div>

<span class="text-white me-3">

<i class="bi bi-person-circle"></i>

<%=user%>

</span>

<a href="LogoutServlet" class="btn btn-light">

<i class="bi bi-box-arrow-right"></i>

Logout

</a>

</div>

</div>

</nav>

<!-- Welcome -->

<div class="container mt-5">

<div class="p-5 bg-white rounded-4 shadow">

<h2 class="fw-bold">

Welcome Back 👋

</h2>

<p class="text-muted">

Successfully logged into Student Management System.

</p>

</div>

</div>

<!-- Cards -->

<div class="container mt-5">

<div class="row g-4">

<div class="col-md-4">

<div class="card shadow border-0">

<div class="card-body text-center">

<i class="bi bi-person-plus-fill text-primary display-4"></i>

<h4 class="mt-3">

Add Student

</h4>

<p class="text-muted">

Register a new student.

</p>

<a href="#" class="btn btn-primary">

Coming Soon

</a>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card shadow border-0">

<div class="card-body text-center">

<i class="bi bi-people-fill text-success display-4"></i>

<h4 class="mt-3">

View Students

</h4>

<p class="text-muted">

Display all students.

</p>

<a href="#" class="btn btn-success">

Coming Soon

</a>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card shadow border-0">

<div class="card-body text-center">

<i class="bi bi-pencil-square text-warning display-4"></i>

<h4 class="mt-3">

Manage Students

</h4>

<p class="text-muted">

Update & Delete records.

</p>

<a href="#" class="btn btn-warning text-white">

Coming Soon

</a>

</div>

</div>

</div>

</div>

</div>

<!-- Footer -->

<footer class="text-center mt-5 mb-3 text-muted">

© 2026 Student Management System | Built using JSP, Servlet, JDBC & Bootstrap

</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>