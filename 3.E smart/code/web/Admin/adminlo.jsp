<%@page import="java.sql.Statement"%>
<%@page import="Register.Db"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    
    if(name.equals("admin")&&password.equals("admin"))
        {
            response.sendRedirect("dashboard.jsp?Admin Login Successfully");
            session.setAttribute("c", name);
        }
        
        else
        {
            response.sendRedirect("adminlogin.jsp?Admin Login Failed");
        }
    
    
%>