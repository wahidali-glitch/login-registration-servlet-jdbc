package com.example.loginapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection con = DBConnection.getConnection();

            String query = "INSERT INTO users(username, password) VALUES(?, ?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, username);
            ps.setString(2, password);

            ps.executeUpdate();

            // 🔥 REDIRECT TO LOGIN PAGE WITH MESSAGE
            response.sendRedirect("index.jsp?success=1");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}