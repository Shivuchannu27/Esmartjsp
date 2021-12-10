
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
                
        String vehicleid=request.getParameter("vehicleid");
        String aname=request.getParameter("aname");
        String vname=request.getParameter("vname");
        String vrdate=request.getParameter("vrdate");
        String vnum=request.getParameter("vnum");
        String vsprice=request.getParameter("vsprice");
        String vrfrom=request.getParameter("vrfrom");
        String vrto=request.getParameter("vrto");
       
        String vsdesc=request.getParameter("vsdesc");

       
        
        
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into rentvehicle values('"+vehicleid+"','"+aname+"','"+vname+"','"+vrdate+"','"+vnum+"','"+vsprice+"','"+vrfrom+"','"+vrto+"','"+vsdesc+"')");
         if(i!= 0)
       {
            response.sendRedirect("viewrentveh.jsp?added successfully");
            }
            else
            {
                response.sendRedirect("sellcustomerregister.jsp?User registerd failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>