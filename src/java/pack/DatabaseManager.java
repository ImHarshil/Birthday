/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Nikhil
 */
public class DatabaseManager {
    protected static String dburl="jdbc:mysql://localhost:3306/birthdaydb";
    protected static String dbusername="root";
    protected static String dbpassword="";
    protected static String dbdriver="com.mysql.jdbc.Driver";
    
    public static boolean executeUpdate(String qry){
        try{
        Class.forName(dbdriver);
        Connection conn=DriverManager.getConnection(dburl,dbusername,dbpassword);
        Statement st= conn.createStatement();
        st.executeUpdate(qry);
        return true;
        }
        catch(Exception ex){
            String s = ex.toString();
            return false;
        }
    }
    public static ResultSet executeQuery(String qry){
        try{
        Class.forName(dbdriver);
        Connection conn=DriverManager.getConnection(dburl,dbusername,dbpassword);
        Statement st= conn.createStatement();
        return st.executeQuery(qry);
        }
        catch(Exception ex){
            return null;
        }
    }
}
