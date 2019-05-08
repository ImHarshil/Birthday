<%-- 
    Document   : search
    Created on : 4 Jul, 2018, 12:47:09 PM
    Author     : Nikhil
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="pack.BirthdayBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <style>
            #tt{
                height: 100%;
                width: 100%;
                font-size: 20px;
            }
            
        </style>
    </head>
    <body>
    <center><b><u><h2 style="background-color: #cff8ff;">Search Result</h2></u></b></center>
        <%
            String name= request.getParameter("name");
            ResultSet rs = BirthdayBean.searchMember(name);
            rs.first();
            name=rs.getString("name");
            String city=rs.getString("city");
            String phoneno=rs.getString("phoneno");
            String address = rs.getString("address");
            String dob= rs.getString("dob");
            String anniversary = rs.getString("anniversary");
            int age=BirthdayBean.getAgeOrNoAnni(dob);
        %>
        <table border="0.25" id="tt">
            <thead style="background-color: #fdddda">
                <tr style="text-align: left;">
                    <th>Fields</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody style="background-color: #e3f9c3">
                <tr>
                    <td>NAME</td>
                    <td><%= name %></td>
                </tr>
                <tr>
                    <td>AGE</td>
                    <td><%= age %></td>
                </tr>
                <tr>
                    <td>CITY</td>
                    <td><%= city %></td>
                </tr>
                <tr>
                    <td>PHONE NO</td>
                    <td><%= phoneno %></td>
                </tr>
                <tr>
                    <td>ADDRESS</td>
                    <td><%= address %></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><%= dob %></td>
                </tr>
                <tr>
                    <td>ANNIVERSARY</td>
                    <td><%= anniversary %></td>
                </tr>
            </tbody>
        </table>
    
        
    </body>
</html>
