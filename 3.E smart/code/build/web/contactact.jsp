
<%@page import="java.sql.*"%>
<%@page import="Register.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
         Connection con;
        %>
        <%
            try{
              
        String name=request.getParameter("name");
        String tel=request.getParameter("tel");
        String bemail=request.getParameter("email");
        String password=request.getParameter("message");
      

       
        
        
        
        con=Db.getConnection();
        out.println("conn");
        Statement st = con.createStatement();
       int i = st.executeUpdate("insert into contact values('"+name+"','"+tel+"','"+bemail+"','"+password+"')");
         if(i!= 0)
       {
            response.sendRedirect("index.html?User registerd successfully");
            }
            else
            {
                response.sendRedirect("index.html?User registerd failed");
            }
           

            }catch(Exception e)
            {
                out.println(e);
            }
        


        %>