package org.one_cedrus.librarysystem.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO778 {
    public static Connection con;

    public DAO778() {
        if (con == null) {
            String dbUrl = "jdbc:sqlite:/Users/1cedrus/WorkSpaces/personal/library-system/library";
            String dbClass = "org.sqlite.JDBC";

            try {
                Class.forName(dbClass);
                con = DriverManager.getConnection(dbUrl);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
