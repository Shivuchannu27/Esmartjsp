
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
        
        String vnum=request.getParameter("vnum");
        String vrfrom=request.getParameter("vrfrom");
        String vrto=request.getParameter("vrto");
        String vsprice=request.getParameter("vsprice");
       
        String bemail=request.getParameter("bemail");
        
        String status="not_Approved";
        String payment="pending";
        
        
        
        con=Db.getConnection();
        out.println("conn");
        
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into brequestrentvehicle values('"+vehicleid+"','"+aname+"','"+vname+"','"+vnum+"','"+vrfrom+"','"+vrto+"','"+vsprice+"','"+bemail+"','"+status+"','"+payment+"')");
         if(i!= 0)
       {
            response.sendRedirect("brentdetails.jsp");
            }
            else
            {
                response.sendRedirect("bviewrentvehicle.jsp");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>