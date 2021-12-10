<%-- 
    Document   : deleteall
    Created on : Feb 13, 2019, 2:49:41 PM
    Author     : comp
--%>
<%@page import="Register.Db"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String vehicleid=request.getParameter("val");

try
{
    Connection con=Db.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("DELETE  from sellvehicle where vehicleid='"+vehicleid+"'");
    
    if(i>0)
    {
        out.println("User deleted Successfully:"+i);
        response.sendRedirect("cseedetails.jsp?UserDeleted Successfully");
    }
    else
    {
        response.sendRedirect("Deletesellveh.jsp?UserDeletion Failed");
    }
}
catch(Exception e)
{
  System.out.println("Error in DeleteUserAction"+e.getMessage());
}
%>