<%-- 
    Document   : RegisterAction
    Created on : Jan 17, 2018, 8:15:32 PM
    Author     : comp
--%>

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
            String vnum=request.getParameter("vnum");
            String vrfrom=request.getParameter("vrfrom");
            String vrto=request.getParameter("vrto");
            String vsprice=request.getParameter("vsprice");
            String bemail=request.getParameter("bemail");
           
              
 try{
       Connection con = Db.getConnection();
       Statement st = con.createStatement();
       int j=st.executeUpdate("update srequestrentvehicle set status='Approved' where status='Not_Approved' && vehicleid='"+vehicleid+"' ");
      
       if(j!=0)
       {
          response.sendRedirect("sApprovedviewdetails.jsp?var=ResponseSent_Successfully");
       }
       else
       {
           response.sendRedirect("selviewdetails.jsp?Response Sending Failed");
       }
       
    }
    catch(Exception e)
    {
        System.out.println("Error in pay"+e.getMessage());
    }
       
//       String status="no";
//       int i = st.executeUpdate("insert into payment values('"+vehicleid+"','"+semail+"','"+vname+"','"+vrdate+"','"+vlnum+"','"+vnum+"','"+vsprice+"','"+vsdesc+"','"+bemail+"','"+status+"')");
//       if(i!= 0&&j!=0)
//       {
//          response.sendRedirect("StaffResponse.jsp?var=ResponseSent_Successfully");
//       }
//       else
//       {
//           response.sendRedirect("SResponseAction.jsp?Response Sending Failed");
//       }
//       
//    }
//    catch(Exception e)
//    {
//        System.out.println("Error in StaffResponseAction"+e.getMessage());
//    }
//       
//       
//       
       
       
       %>
    </body>
</html>

