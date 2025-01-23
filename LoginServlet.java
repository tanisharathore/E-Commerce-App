package com.ecom;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve input parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Input validation
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            response.getWriter().write("Error: Username and password are required.");
            return;
        }

        // Hash the password (Note: Use a more secure hashing mechanism in production)
        String hashedPassword = Integer.toHexString(password.hashCode());

        // Database interaction
        try (Connection connection = DBUtil.getConnection()) {
            if (connection == null) {
                response.getWriter().write("Error: Unable to connect to the database.");
                return;
            }

            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Set parameters
                statement.setString(1, username);
                statement.setString(2, hashedPassword);

                // Execute query
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        // Login success: Set session attribute
                        HttpSession session = request.getSession();
                        session.setAttribute("username", username);

                        // Redirect to the home page with an alert message
                        response.sendRedirect("home.jsp");
                    } else {
                        // Invalid credentials
                        response.getWriter().write("Invalid username or password.");
                    }
                }
            }
        } catch (SQLException e) {
            // Log the exception and inform the user
            e.printStackTrace();
            response.getWriter().write("Database error: " + e.getMessage());
        }
    }
}
