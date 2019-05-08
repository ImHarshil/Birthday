<%-- 
    Document   : index
    Created on : 3 Jul, 2018, 8:50:19 PM
    Author     : Nikhil
--%>

<%@page import="pack.BirthdayBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome.jsp</title>
        <style>
            body{
                color:white;
                background: linear-gradient(deepskyblue,black);
                background-repeat: no-repeat;
                background-color: lightblue;
                font-size: 20px;
            }
            a{
                color: gold;
                font-size: 25px;
            }
            #sub{
               width: 50px;
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
        <nav><center>
                <a href="allrecords.jsp">get all members</a>|
                <a href="insertmember.jsp">add new member</a>|</center>

        </nav>
        <table>
            <tr>
            <form method="post" action="updatemember.jsp">
                <td>  update member : </td>
                <td><input type="text" required autocomplete name="name" placeholder="name" />
                <input  id="sub" type="submit" value="go" /></td>
            </form>
            </tr>
            <tr>
            <form method="post" action="search.jsp">
                <td>search  member :</td>
                <td><input required type="text" placeholder="name" autocomplete="on" list="mm" name="name"/>
                <input id="sub" type="submit" value="go"></input></td>
            </form>
            </tr>
            <tr>
            <form method="post" action="month.jsp">
                <td> monthly search :</td>
                <td><select name="month">
                    <option value="01" name="month">January</option>
                    <option value="02" name="month">February</option>
                    <option value="03" name="month">March</option>
                    <option value="04" name="month">April</option>
                    <option value="05" name="month">May</option>
                    <option value="06" name="month">June</option>
                    <option value="07" name="month">July</option>
                    <option value="08" name="month">August</option>
                    <option value="09" name="month">September</option>
                    <option value="10" name="month">October</option>
                    <option value="11" name="month">November</option>
                    <option value="12" name="month">December</option>
                    <input id="sub" type="submit" value="go"/>
                </select>
            </form></td>
            </tr>
            <datalist id="mm">
                <option value="harshil">harshil</option>
                <option value="devang">devang</option>
            </datalist>
            <tr><form method="post" action="delete.jsp">
                <td>delete  member :</td>
                <td><input required type="text" placeholder="name" autocomplete="on" list="mm" name="name"/>
                <input id="sub" type="submit" value="go"></input></td>
            </form></tr>
        </table>
        <%
            ResultSet rs = BirthdayBean.getToday_sBirthday();
            if (rs.first()) {
        %>
    <center><table border="1" style="padding: 20px; border: 1px solid white;">

            <tbody>
                <tr>
                    <td>name</td>
                    <td>city</td>
                    <td>phoneno</td>
                    <td>Address</td>
                    <td>Dob</td>
                    <td>Age</td>
                    <td>Anniversary</td>

                </tr>
                <% do {%>
                <tr>
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
        </center>
    </body>
</html>
