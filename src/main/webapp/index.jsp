<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Management System</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

</head>

<body class="bg-primary bg-gradient">

<div class="container vh-100 d-flex justify-content-center align-items-center">

    <div class="card shadow-lg border-0 rounded-4 p-5 text-center" style="max-width:650px; width:100%;">

        <i class="bi bi-mortarboard-fill text-primary display-1"></i>

        <h1 class="fw-bold mt-3">
            Student Management System
        </h1>

        <p class="text-muted mt-3">

            A simple Student Management System developed using
            <strong>JSP, Servlets, JDBC, MySQL & Bootstrap 5</strong>.

        </p>

        <hr>

        <div class="row mt-4">

            <div class="col-md-6 mb-3">

                <a href="register.jsp"
                   class="btn btn-success btn-lg w-100">

                    <i class="bi bi-person-plus-fill"></i>

                    Register

                </a>

            </div>

            <div class="col-md-6 mb-3">

                <a href="login.jsp"
                   class="btn btn-primary btn-lg w-100">

                    <i class="bi bi-box-arrow-in-right"></i>

                    Login

                </a>

            </div>

        </div>

        <div class="row text-center mt-5">

            <div class="col">

                <i class="bi bi-person-fill text-primary display-6"></i>

                <h5 class="mt-2">

                    Registration

                </h5>

            </div>

            <div class="col">

                <i class="bi bi-shield-lock-fill text-success display-6"></i>

                <h5 class="mt-2">

                    Secure Login

                </h5>

            </div>

            <div class="col">

                <i class="bi bi-database-fill text-warning display-6"></i>

                <h5 class="mt-2">

                    MySQL Database

                </h5>

            </div>

        </div>

        <hr>

        <p class="text-secondary mb-0">

            © 2026 Student Management System

        </p>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>