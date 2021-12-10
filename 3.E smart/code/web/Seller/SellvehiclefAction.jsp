
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
                
         
        String vehicleid=request.getParameter("vehicleid");      
        String semail=request.getParameter("semail");
        String vname=request.getParameter("vname");
        String vrdate=request.getParameter("vrdate");
        String vlnum=request.getParameter("vlnum");
        String vnum=request.getParameter("vnum");
        String vsprice=request.getParameter("vsprice");
        String vsdesc=request.getParameter("vsdesc");

       
        
        
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into sellvehicle values('"+vehicleid+"','"+semail+"','"+vname+"','"+vrdate+"','"+vlnum+"','"+vnum+"','"+vsprice+"','"+vsdesc+"')");
         if(i!= 0)
       {
            response.sendRedirect("cseedetails.jsp");
            }
            else
            {
                response.sendRedirect("caddvehicle.jsp");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>