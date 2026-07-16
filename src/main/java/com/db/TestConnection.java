package com.db;

import java.sql.Connection;

public class TestConnection {

    public static void main(String[] args) {

        Connection con = DBConnection.getConnection();

        if (con != null) {
            System.out.println("Connection Object Created");
        } else {
            System.out.println("Connection Failed");
        }

    }

}