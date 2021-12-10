
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
                
         
        String vehicleid=request.getParameter("vehicleid");      
        String email=request.getParameter("email");
        String vname=request.getParameter("vname");
        String vrdate=request.getParameter("vrdate");
        String vlnum=request.getParameter("vlnum");
        String vnum=request.getParameter("vnum");
        String vsprice=request.getParameter("vsprice");
        String vsdesc=request.getParameter("vsdesc");
        String bemail=request.getParameter("bemail");
        
        String status="not_Approved";
        String payment="pending";
        
        
        
        con=Db.getConnection();
        out.println("conn");
        
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into buyvehicle values('"+vehicleid+"','"+email+"','"+vname+"','"+vrdate+"','"+vlnum+"','"+vnum+"','"+vsprice+"','"+vsdesc+"','"+bemail+"','"+status+"','"+payment+"')");
         if(i!= 0)
       {
            response.sendRedirect("bcbuydetails.jsp");
            }
            else
            {
                response.sendRedirect("bcviewvehicle.jsp");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>