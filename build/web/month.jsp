<%-- 
    Document   : month
    Created on : 4 Jul, 2018, 4:18:34 PM
    Author     : Nikhil
--%>

<%@page import="pack.BirthdayBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>month</title>
        <style>
            #tt{
                height: 100%;
                width: 100%;
            }
        </style>
    </head>
    <body>
    <center><b><u><h2 style="background-color: #cff8ff;">Month Wise Search</h2></u></b></center>
                <%
                    int month = Integer.parseInt(request.getParameter("month"));
                    ResultSet rs = BirthdayBean.getBithdayByMonth(month);
                    if (rs.first()) {
                        int n = 0;
                %>
    <table border="0" id="tt">
        <tbody>
            <tr style="background-color: #fdddda;">
                <td style="text-align: left;">Sno</td>
                <td style="text-align: left;">name</td>
                <td style="text-align: left;">city</td>
                <td style="text-align: left;">phoneno</td>
                <td style="text-align: left;">Address</td>
                <td style="text-align: left;">Dob</td>
                <td style="text-align: left;">Age</td>
                <td style="text-align: left;">Anniversary</td>

            </tr>
            <% do {
                    n++;
            %>
            <tr style="background-color: #d5ffcf;">
                <td><%= n%></td>
                <td><%= rs.getString("name")%></td>
                <td><%= rs.getString("city")%></td>
                <td><%= rs.getString("phoneno")%></td>
                <td><%= rs.getString("address")%></td>
                <td><%= rs.getString("dob")%></td>
                <td><%= BirthdayBean.getAgeOrNoAnni(rs.getString("dob"))%></td>
                <td><%= rs.getString("anniversary")%></td>
            </tr>
            <% } while (rs.next()); %>
        </tbody>
    </table>
    <% } else {
    %>
    <h5>NO BIRTHDAY </h5>
    <% }%>
</body>
</html>
