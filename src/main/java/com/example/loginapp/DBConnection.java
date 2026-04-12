package com.example.loginapp;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("org.postgresql.Driver");

            con = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/loginapp",
                    "postgres",
                    "1234" // change if needed
            );

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }
}