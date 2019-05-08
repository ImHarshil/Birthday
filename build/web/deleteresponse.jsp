<%-- 
    Document   : deleteresponse
    Created on : 7 Jul, 2018, 2:13:17 PM
    Author     : Nikhil
--%>

<%@page import="pack.BirthdayBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete response</title>
        <style>
              body{
                background: radial-gradient(circle,green,yellow,orange);
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
                    animation-direction: reverse;
          
        </style>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            boolean res=BirthdayBean.deleteMember(name);
            
             if(res==true){
                 out.println("<a href='index.jsp'><div> Memeber deleted successfully</div></a>");
             }
             else{
                 out.println("<a href='index.jsp'><div>DELETION FAILED</div></a>");
             }
         
            %>
    </body>
</html>
