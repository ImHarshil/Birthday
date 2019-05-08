<%-- 
    Document   : insertmember
    Created on : 4 Jul, 2018, 7:19:49 PM
    Author     : Nikhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert member</title>
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
        <center><b><u><h2 style="background-color: #cff8ff;">Insert New Member</h2></u></b></center>

        <form method="post" action="insertresponse.jsp" >
        <table border="0" id="tt">
            <thead style="background-color: #fdddda;">
                <tr style="text-align: left;">
                    <th>Fields</th>
                    <th>Enter Details</th>
                </tr>
            </thead>
            <tbody style="background-color: #d5ffcf;">
                <tr>
                    <td>Name</td>
                    <td><input required type="text" name="name" autocomplete="on" autofocus /></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input required type="text" name="city" autocomplete="on" /></td>
                </tr>
                <tr>
                    <td>Phone no</td>
                    <td><input required type="tel" name="phoneno" autocomplete="on" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input required type="text" name="address" /></td>
                </tr>
                <tr>
                    <td>Dob</td>
                    <td><input required type="date" name="dob" /></td>
                </tr>
                <tr>
                    <td>Anniversary</td>
                    <td><input  type="date" name="anniversary" /></td>
                </tr>
                <tr>
                    <td><input id="sub" type="submit" value="enter" /></td>
                    <td><input id="sub" type="reset" value="refresh" /></td>
                </tr>
            </tbody>
        </table>
            </form>
    </body>
</html>
