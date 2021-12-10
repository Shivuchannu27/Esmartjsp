
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String vehicleid=request.getParameter("vehicleid");      
        String aname=request.getParameter("aname");
        String vname=request.getParameter("vname");
        String vrfrom=request.getParameter("vrfrom");
        String vrto=request.getParameter("vrto");
        String vsprice=request.getParameter("vsprice");
        String bemail=request.getParameter("bemail");
        
           
              
 try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int j=st.executeUpdate("update brequestrentvehicle set payment='Paid' where payment='pending'&& vehicleid='"+vehicleid+"' ");
      
        if(j!=0)
       {
          response.sendRedirect("brentpaydetails.jsp?var=ResponseSent_Successfully");
       }
       else
       {
           response.sendRedirect("brentdetails.jsp?Response Sending Failed");
       }
       
    }
    catch(Exception e)
    {
        System.out.println("Error in pay"+e.getMessage());
    }
       
       
       
       
       
       %>
    </body>
</html>

