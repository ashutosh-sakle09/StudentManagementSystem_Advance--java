package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.dao.UserDAO;
import com.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validation
        if (name == null || name.trim().isEmpty()
                || email == null || email.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {

            out.println("<h2>All fields are required!</h2>");
            return;
        }

        // DAO Object (Sirf ek baar)
        UserDAO dao = new UserDAO();

        // Duplicate Email Check
        if (dao.isEmailExists(email)) {

            out.println("<h2>Email already registered!</h2>");
            return;
        }

        // User Object
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);

        // Register User
        boolean status = dao.registerUser(user);

        if (status) {

            response.sendRedirect("login.jsp");

        } else {

            out.println("<h2>Registration Failed</h2>");

        }

    }
}