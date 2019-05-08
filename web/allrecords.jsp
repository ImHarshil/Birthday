<%-- 
    Document   : allrecords
    Created on : 3 Jul, 2018, 8:26:12 PM
    Author     : Nikhil
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.BirthdayBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #tt{
                height:100%;
                width:100%;
                
            }
        </style>
    </head>
    <body>
        <%
            ResultSet rs= BirthdayBean.getAllRecords();
            
            ResultSetMetaData rsmd= rs.getMetaData();
            
            
            rs.first();
            int n = 0;
        %>
        <b><u><center><h3 style="text-decoration: blink; background-color: #eafde9">Showing All Members Record</h3></center></u></b>
        <table border="0.2" id='tt' >
            <thead style="background-color: lemonchiffon">
                <tr>
                    <th>Sno</th>
                    <% for(int i=1;i<=rsmd.getColumnCount();i++){%>
                    <th><%= rsmd.getColumnName(i)%></th>
                  <% } %>  
                </tr>
            </thead>
            <tbody style="background-color: #e9f1fd"><% 
                do{ 
                n++;
            %>
                <tr>
                    <td><%= n %></td>
                    <% for(int i=1;i <= rsmd.getColumnCount();i++){ %>
                    <td><%= rs.getString(i) %></td>
                    <% } %>
                </tr>
                    <% }while(rs.next()); %>        
            </tbody>
        </table>

    </body>
</html>
