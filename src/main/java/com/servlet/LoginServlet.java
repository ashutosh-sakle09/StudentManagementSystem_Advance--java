package com.servlet;

import java.io.IOException;

import com.dao.UserDAO;
import com.model.User;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validation
        if (email == null || email.trim().isEmpty()
                || password == null || password.trim().isEmpty()) {

            response.getWriter().println("<h2>All fields are required!</h2>");
            return;
        }

        // User Object
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

        // DAO
        UserDAO dao = new UserDAO();

        boolean status = dao.loginUser(user);

        if (status) {

            HttpSession session = request.getSession();

            session.setAttribute("user", email);

            response.sendRedirect("home.jsp");

        } else {

            response.sendRedirect("login.jsp?error=invalid");

        }

    }

}