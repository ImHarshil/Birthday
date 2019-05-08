<%-- 
    Document   : insertresponse
    Created on : 4 Jul, 2018, 7:42:42 PM
    Author     : Nikhil
--%>

<%@page import="pack.BirthdayBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert response</title>
        <style>
            body{
                background: radial-gradient(circle,purple,blue,white);
            }
            @keyframes anni{
                        0%{
                         background-color:gold;
                        }
                        25%{
                           background-color:pink; 
                        }
                        50%{
                           background-color:white; 
                        }
                        100%{
                           background-color:blue; 
                        }
                    }
                
                div{
                    height: 100px;
                    width: 100%;
                    color: white;
                    text-align: center;
                    font-size: 20px;
                    text-decoration:underline;
                    animation-name: anni;
                    animation-duration: 3s;
                    animation-iteration-count: infinite;
                    animation-timing-function: ease-in-out;
                    animation-direction:reverse;
                        
                }
        </style>
    </head>
    <body>
        <%
            BirthdayBean bb = new BirthdayBean();
            bb.setName(request.getParameter("name"));
            bb.setCity(request.getParameter("city"));
            bb.setPhoneno(request.getParameter("phoneno"));
            bb.setAddress(request.getParameter("address"));
            bb.setDob(request.getParameter("dob"));
            if (request.getParameter("anniversary").equals(""))
                ; else {
                bb.setAnniversary(request.getParameter("anniversary"));
            }
            if (bb.addMember()) {
                out.println("<a href='index.jsp'><div>Record Added Successfully</div></a>");
            } else {
                out.println("<a href='index.jsp'><div>Insertion Failed</div></a>");
            }
        %>



    </body>
</html>
