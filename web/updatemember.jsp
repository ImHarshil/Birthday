<%-- 
    Document   : updatemember
    Created on : 4 Jul, 2018, 8:39:01 PM
    Author     : Nikhil
--%>

<%@page import="pack.BirthdayBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update member</title>
        <style>
            #tt{
                height: 100%;
                width: 100%;
            }
            #sub{
               width: 55px;
               background-color: white;
               transition-duration: 0.5s;
            }
            #sub:hover{
                transform:scale(1.5,1.5);
                transform-origin: 25% 75%;
                background-color: lightcyan;
            }
        </style>
    </head>
    <body>
        <% ResultSet rs = BirthdayBean.searchMember(request.getParameter("name"));
        rs.first();
%>
                <center><b><u><h2 style="background-color: #cff8ff;">Insert New Member</h2></u></b></center>

        <form method="post" action="updateresponse.jsp" >
        <table border="0" id="tt">
            <thead style="background-color: #fdddda;" >
                <tr style="text-align: left;">
                    <th>Fields</th>
                    <th>Enter Details</th>
                </tr>
            </thead>
            <tbody style="background-color: #d5ffcf;">
                <tr>
                    <td>Name</td>
                    <td><textarea name="name" autofocus="on" required maxlength="25" ><%= rs.getString("name") %></textarea></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input required type="text" name="city" autocomplete="on" value=<%= rs.getString("city") %> /></td>
                </tr>
                <tr>
                    <td>Phone no</td>
                    <td><input required type="tel" name="phoneno" autocomplete="on" value=<%= rs.getString("phoneno") %> /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea required  name="address" ><%= rs.getString("address") %></textarea></td>
                </tr>
                <tr>
                    <td>Dob</td>
                    <td><input required type="date" name="dob" value=<%= rs.getString("dob") %> /></td>
                </tr>
                <tr>
                    <td>Anniversary</td>
                    <td><input  type="date" name="anniversary" value=<%= rs.getString("anniversary") %> /></td>
                </tr>
                <tr>
                    <td><input id="sub" type="reset" value="refresh" /></td>
                    <td><input id="sub" type="submit" value="enter" /></td>
                </tr>
            </tbody>
        </table>
                    <input type="text" hidden="on" name="oldname" value=<%= rs.getString("name") %> />
      </form>
    </body>
</html>
