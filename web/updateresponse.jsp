<%-- 
    Document   : updateresponse
    Created on : 4 Jul, 2018, 8:51:12 PM
    Author     : Nikhil
--%>

<%@page import="pack.BirthdayBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update response</title>
        <style>
            body{
                background:linear-gradient(#ffffcf,#cfffcf,#ffcff1);
            }
            @keyframes anni{
                        0%{
                         background-color:red;
                        }
                        25%{
                           background-color:blue; 
                        }
                        50%{
                           background-color:green; 
                        }
                        100%{
                           background-color:yellow; 
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
            BirthdayBean bb =new BirthdayBean();
            bb.setAddress(request.getParameter("address"));
            
            bb.setCity(request.getParameter("city"));
            bb.setDob(request.getParameter("dob"));
            bb.setName(request.getParameter("name"));
            bb.setPhoneno(request.getParameter("phoneno"));
            
            String anni=request.getParameter("anniversary");
            if(anni.equals(""));
                
            else
                bb.setAnniversary(request.getParameter("anniversary"));
            if(bb.updateMember(request.getParameter("oldname"))) 
            out.println("<a href='index.jsp'><div>update successful</div</a>");
            else
            out.println("<a href='index.jsp'><div>update failed</div></a>");
            
            %>
    </body>
</html>
