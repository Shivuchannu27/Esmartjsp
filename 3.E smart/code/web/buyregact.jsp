
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
                String userid=request.getParameter("userid");
        String name=request.getParameter("name");
        String tel=request.getParameter("tel");
        String bemail=request.getParameter("bemail");
        String password=request.getParameter("password");
        String address=request.getParameter("address");

       
        
        
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into buycusregister values('"+userid+"','"+name+"','"+tel+"','"+bemail+"','"+password+"','"+address+"')");
         if(i!= 0)
       {
            response.sendRedirect("buycustomerlogin.jsp?User registerd successfully");
            }
            else
            {
                response.sendRedirect("customerregister.jsp?User registerd failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>